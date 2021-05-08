require 'rails_helper'

RSpec.describe Deck do
  before(:each) do
    @my_deck = Deck.new
  end

  describe 'instances' do
    it 'can create a full deck' do
      expect(@my_deck.cards.length).to eq(52)
    end

    it 'can randomize a deck' do
      first1 = @my_deck.cards.first
      last1 = @my_deck.cards.last
      @my_deck.shuffle
      first2 = @my_deck.cards.first
      last2 = @my_deck.cards.last

      expect(first1).to_not eq(first2)
      expect(last1).to_not eq(last2)
    end
  end
end
