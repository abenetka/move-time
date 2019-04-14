class LocationFacade
  def initialize(location)
    @location = location
  end

  def find_population
    data = location_service.get_census_data(@location)
    data[:records].first[:fields][:total_population]
  end

  def find_median_age
    data = location_service.get_census_data(@location)
    data[:records].first[:fields][:median_age]
  end

  def find_avg_household_size
    data = location_service.get_census_data(@location)
    data[:records].first[:fields][:average_household_size]
  end

  def location_service
    OpenDataService.new
  end
end
