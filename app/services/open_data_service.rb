class OpenDataService

  def get_census_data(location)
    Rails.cache.fetch("census_info_#{location}") do
      response = conn.get("/api/records/1.0/search/?dataset=us-cities-demographics") do |f|
        f.params[:q] = location
        f.params[:rows] = 1
      end
      JSON.parse(response.body, symbolize_names: true)
    end
  end

  private

  def conn
    Faraday.new("https://public.opendatasoft.com") do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
