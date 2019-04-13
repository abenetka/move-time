require 'rails_helper'

describe 'as a user when they visit the sit' do
  it 'shows welcome page' do
    visit root_path
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Move Time")
  end

  it 'can search for a location' do
    visit root_path

    within '.search_location_container' do
      expect(page).to have_content("Where do you want to move?")
      expect(page).to have_button("Search")
      fill_in :location, with: "Denver, CO"
      click_on "Search"
    end
    population = 2115827
    expect(current_path).to eq(search_result_path)
    expect(page).to have_content("Population: #{population}")
  end

end
