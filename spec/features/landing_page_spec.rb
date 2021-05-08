require 'rails_helper'

describe "Landing page" do
  it "shows page title" do
    visit "/"
    expect(page).to have_content("Card Shuffler!")
  end
  
  it "displays all cards" do
    visit "/"
    expect(page).to have_content("The 2 of Clubs")
    expect(page).to have_content("The 2 of Hearts")
    expect(page).to have_content("The 2 of Diamonds")
    expect(page).to have_content("The 2 of Spades")
  end
end
