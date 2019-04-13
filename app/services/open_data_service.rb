class OpenDataService

  def get_population(location)
    response = conn.get("/api/records/1.0/search/?dataset=us-population-urban-area") do |f|
      f.params[:q] = location
      f.params[:sort] = "year"
      f.params[:rows] = 1
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  
  def conn
    Faraday.new("https://public.opendatasoft.com") do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
