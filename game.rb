class Game
  include CardOptions
  attr_reader :status, :actions

  RATE = -10
  SHOW = true
  HIDE = false

  def initialize(player,dealer)
    @player = player
    @dealer = dealer
    @cards = []
    @deck = Deck.new(create_deck_of_cards)
    @bank = 0
  end

  def actions

  end

  def add_cards_player
    if @player.cards.empty?
      @bank += 10
      @player.change_bank(RATE)
      2.times {@player.add_card(@deck.cards.delete_at(rand(0..51)))}
    elsif @player.cards.count < 3
      @player.add_card(@deck.cards.delete_at(rand(0..51)))
    end
  end

  def add_cards_dealer
    if @dealer.cards.empty?
      @bank += 10
      @dealer.change_bank(RATE)
      2.times {@dealer.add_card(@deck.cards.delete_at(rand(0..51)))}
    elsif @dealer.cards.count < 3
      @dealer.add_card(@deck.cards.delete_at(rand(0..51)))
    end
  end

  def player_cards
    @player.points_of_cards(SHOW)
  end

  def dealer_cards
    @dealer.points_of_cards(HIDE)
  end

end
