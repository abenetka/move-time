class SearchController < ApplicationController
  def index
    @location = LocationFacade.new(params[:location])
  end
end
