class GeocodingService

  def get_coordinates(city, state)
    Rails.cache.fetch("lat_lon_#{city}_#{state}") do
      response = conn.get("/maps/api/geocode/json") do |f|
        f.params[:address] = "#{city}, #{state}"
      end
      JSON.parse(response.body, symbolize_names: true)[:results].first[:geometry][:location]
    end
  end

  private

  def conn
    Faraday.new('https://maps.googleapis.com') do |faraday|
      faraday.params[:key] = ENV['google_maps_api_key']
      faraday.adapter Faraday.default_adapter
    end
  end

end
