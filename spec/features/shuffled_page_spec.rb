require 'rails_helper'

describe "Shuffled cards page" do
  it "shows page title" do
    visit "/shuffled"
    expect(page).to have_content("Card Shuffler!")

    expect(page).to have_content("The 2 of ♣")
    expect(page).to have_content("The 2 of ♥")
    expect(page).to have_content("The 2 of ♦")
    expect(page).to have_content("The 2 of ♠")
  end

  it "has a link to shuffle the cards again" do
    visit "/shuffled"

    page.has_button?('Shuffle the cards!')
  end

  it "has a link to unshuffle the cards again" do
    visit "/shuffled"

    page.has_button?('Unshuffle the cards!')
  end
end
