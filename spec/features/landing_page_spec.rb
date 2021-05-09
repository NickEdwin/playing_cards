require 'rails_helper'

describe "Landing page" do
  it "shows page title" do
    visit "/"
    expect(page).to have_content("Card Shuffler!")
  end

  it "displays all cards" do
    visit "/"
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

  it 'contains a button to shuffle the cards' do
    visit "/"
    page.has_button?('Shuffle the cards!')
  end

  it 'follows button to new page' do
    visit "/"
    click_button('Shuffle the cards!')

    expect(current_path).to eq("/shuffled")
  end
end
