class LocationFacade
  def initialize(location)
    @location = location
  end

  def find_location
    location_service[:records].first[:fields][:population]
  end

  def location_service
    OpenDataService.new.get_population(@location)
  end
end
