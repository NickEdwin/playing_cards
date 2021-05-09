require 'rails_helper'

describe "Shuffled cards page" do
  it "shows page title" do
    visit "/shuffled"
    expect(page).to have_content("Card Shuffler!")

    expect(page).to have_css('.card')

    expect(page).to have_css('.card .hearts')
    expect(page).to have_css('.card .diamonds')
    expect(page).to have_css('.card .spades')
    expect(page).to have_css('.card .clubs')

    expect(page).to have_css('.value', text: '2', count: 4)
    expect(page).to have_css('.value', text: '3', count: 4)
    expect(page).to have_css('.value', text: 'Q', count: 4)
    expect(page).to have_css('.value', text: 'A', count: 4)
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
