require 'rails_helper'

describe OpenDataService do
  it 'exists' do
    open_data_service = OpenDataService.new
    expect(open_data_service).to be_a(OpenDataService)
  end

  it 'gets population of location' do
    open_data_service = OpenDataService.new
    location = "Denver, CO"
    population = open_data_service.get_population(location)[:records].first[:fields][:population]
    expect(population).to eq(2888227)
  end
end
