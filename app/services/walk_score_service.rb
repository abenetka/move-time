class WalkScoreService

  def get_walk_score(lat, lon)
    Rails.cache.fetch("walk_score_#{lat}_#{lon}") do
      response = conn.get("/score?") do |f|
        f.params[:format] = "json"
        f.params[:lat] = lat
        f.params[:lon] = lon
        f.params[:transit] = 1
        f.params[:bike] = 1
      end
      JSON.parse(response.body, symbolize_names: true)
    end
  end

  private

  def conn
    Faraday.new("http://api.walkscore.com/") do |f|
      f.params[:wsapikey] = ENV['wsapikey']
      f.adapter Faraday.default_adapter
    end
  end

end
