require 'rails_helper'

describe "Landing page" do
  it "shows page title" do
    visit "/"
    expect(page).to have_content("Card Shuffler!")
  end

  it "displays all cards" do
    visit "/"
    expect(page).to have_content("The 2 of ♣")
    expect(page).to have_content("The 2 of ♥")
    expect(page).to have_content("The 2 of ♦")
    expect(page).to have_content("The 2 of ♠")
  end

  it 'contains a button to shuffle the cards' do
    page.has_button?('Shuffle the cards!')
  end
end
