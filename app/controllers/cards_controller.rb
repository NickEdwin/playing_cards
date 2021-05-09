class CardsController < ApplicationController
  def index
    @deck = Deck.new
  end

  def shuffle
    @cards = Deck.new.shuffle
  end
end
