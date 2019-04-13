class SearchController < ApplicationController
  def index
    @location = LocationFacade.new(params[:zipcode])
  end
end
