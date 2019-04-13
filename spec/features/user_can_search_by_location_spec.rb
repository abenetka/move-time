require 'rails_helper'

describe 'as a user when they visit the sit' do
  it 'can search for a location' do
    visit root_path

    within '.search_location_container' do
      expect(page).to have_content("Where do you want to move?")
      expect(page).to have_button("Search")
      fill_in :location, with: "Denver, CO"
      click_on "Search"
    end

    expect(current_path).to eq(search_result_path)
  end

  it 'shows information about a location when searched for' do
    visit root_path
    within '.search_location_container' do
      fill_in :location, with: "Denver, CO"
      click_on "Search"
    end
    population = 682545
    location = "Denver, CO"
    median_age = 34.1
    avg_household_size = 2.33

    expect(page).to have_content("#{location}")
    expect(page).to have_content("Population: #{population} people")
    expect(page).to have_content("Median Age: #{median_age} years old")
    expect(page).to have_content("Average Household Size: #{avg_household_size} people")
  end




end
