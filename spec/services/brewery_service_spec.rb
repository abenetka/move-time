require 'rails_helper'

describe BreweryService do
  it 'exists' do
    brewery_service = BreweryService.new
    expect(brewery_service).to be_a(BreweryService)
  end
  # 
  # it 'gets population of location' do
  #   geocoding_service = BreweryService.new
  #   city = "Denver"
  #   state = "CO"
  #   lat = geocoding_service.get_coordinates(city, state)[:lat]
  #   long = geocoding_service.get_coordinates(city, state)[:lng]
  #   expect(lat).to eq(39.7392358)
  #   expect(long).to eq(-104.990251)
  # end
end
