class LocationFacade
  def initialize(location)
    @location = location
  end

  def find_population
    location_service[:records].first[:fields][:total_population]
  end

  def find_median_age
    location_service[:records].first[:fields][:median_age]
  end

  def find_avg_household_size
    location_service[:records].first[:fields][:average_household_size]
  end

  def find_walk_score
    walk_service[:walkscore]
  end

  def find_walk_description
    walk_service[:description]
  end

  def find_bike_score
    walk_service[:bike][:score]
  end

  def find_bike_description
    walk_service[:bike][:description]
  end

  def find_longitude
    coordinates_service[:lng]
  end

  def find_latitude
    coordinates_service[:lat]
  end

  def split_location
  @location.split(', ')
end

  def location_service
    @_location_service ||= OpenDataService.new.get_census_data(@location)
  end

  def coordinates_service
    @_geocoding_service ||= GeocodingService.new.get_coordinates(split_location[0], split_location[1])
  end

  def walk_service
    lat = find_latitude
    lon = find_longitude
    @_walk_score_service ||= WalkScoreService.new.get_walk_score(lat, lon)
  end
end
