class SearchController < ApplicationController
  def index
    @location = params[:location]
    @location_data = LocationFacade.new(@location)
  end
end
