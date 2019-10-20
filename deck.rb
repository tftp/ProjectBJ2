class Deck
  attr_accessor :cards
  attr_reader :cards_number

  def initialize(cards)
    @cards = cards
  end

  def cards_number
    @cards.count - 1
  end
end
