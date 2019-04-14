class BreweryService

  def get_breweries(lat, lon)
    Rails.cache.fetch("brewery_info_#{lat}_#{lon}", expires_in: 1.day) do
      response = conn.get("/v2/search/geo/point?") do |f|
        f.params[:lat] = lat
        f.params[:lng] = lon
      end
      JSON.parse(response.body, symbolize_names: true)
    end
  end

  private

  def conn
    Faraday.new("https://sandbox-api.brewerydb.com") do |f|
      f.params[:key] = ENV['brewerydb_key']
      f.adapter Faraday.default_adapter
    end
  end

end
