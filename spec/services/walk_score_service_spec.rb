require 'rails_helper'

describe WalkScoreService do
  it 'exists' do
    walk_score_service = WalkScoreService.new
    expect(walk_score_service).to be_a(WalkScoreService)
  end

  it 'gets the walk score of a location' do
    walk_score_service = WalkScoreService.new
    location = "Denver, CO"
    # walk_score = walk_score_service.get_census_data(location)[:records].first[:fields][:total_population]
    # expect(walk_score).to eq(682545)
  end
end
