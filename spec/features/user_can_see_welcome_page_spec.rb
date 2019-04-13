require 'rails_helper'

describe 'as a user when they visit the sit' do
  it 'shows welcome page' do
    visit root_path
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Move Time")
  end
end
