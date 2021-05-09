class Deck
  attr_reader :cards

  def initialize
    @cards = []
    @ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    @suits = %w(spades diamonds hearts clubs)

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end
end
