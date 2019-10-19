class Game
  include CardOptions
  attr_reader :status, :actions

  def initialize(player,dealer)
    @player = player
    @dealer = dealer
    @cards = []
    @deck = Deck.new(create_deck_of_cards)
  end

  def actions

  end

  def player_cards

  end

  def dealer_cards

  end

end
