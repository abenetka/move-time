require 'rails_helper'

describe GeocodingService do
  it 'exists' do
    geocoding_service = GeocodingService.new
    expect(geocoding_service).to be_a(GeocodingService)
  end

  it 'gets population of location' do
    geocoding_service = GeocodingService.new
    city = "Denver"
    state = "CO"
    lat = geocoding_service.get_coordinates(city, state)[:lat]
    long = geocoding_service.get_coordinates(city, state)[:lng]
    expect(lat).to eq(39.7392358)
    expect(long).to eq(-104.990251)
  end
end
