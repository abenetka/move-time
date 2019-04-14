require 'rails_helper'

describe WalkScoreService do
  it 'exists' do
    walk_score_service = WalkScoreService.new
    expect(walk_score_service).to be_a(WalkScoreService)
  end

  it 'gets the walk score and description of a location' do
    walk_score_service = WalkScoreService.new
    lat = 39.739
    lon = -104.9903

    walk_score = walk_score_service.get_walk_score(lat, lon)
    walk_description = walk_score_service.get_walk_score(lat, lon)
    expect(walk_score[:walkscore]).to eq(93)
    expect(walk_score[:description]).to eq("Walker's Paradise")
  end

  it 'gets the bike score and description of a location' do
    walk_score_service = WalkScoreService.new
    lat = 39.739
    lon = -104.9903

    bike_score = walk_score_service.get_walk_score(lat, lon)
    bike_description = walk_score_service.get_walk_score(lat, lon)
    expect(bike_score[:bike][:score]).to eq(94)
    expect(bike_score[:bike][:description]).to eq("Biker's Paradise")
  end
end
