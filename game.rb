class Game
  include CardOptions
  include EndGame
  attr_reader :status, :actions

  RATE = -10
  SHOW = true
  HIDE = false

  def initialize(player,dealer)
    @player = player
    @dealer = dealer
    @cards = []
    @deck
    @bank = 0
  end

  def actions(value)
    case value
    when '1'
      choise_of_dealer
      false
    when '2'
      add_cards_player
      choise_of_dealer
      true
    when '3'
      choise_of_dealer
      true
    end
  end

  def new_deck
    @deck = Deck.new(create_deck_of_cards)
  end

  def add_cards_player
    if @player.cards.empty?
      @bank += 10
      @player.change_bank(RATE)
      2.times {@player.add_card(@deck.cards.delete_at(rand(0..@deck.cards_number)))}
    elsif @player.cards.count < 3
      @player.add_card(@deck.cards.delete_at(rand(0..@deck.cards_number)))
    end
  end

  def add_cards_dealer
    if @dealer.cards.empty?
      @bank += 10
      @dealer.change_bank(RATE)
      2.times {@dealer.add_card(@deck.cards.delete_at(rand(0..@deck.cards_number)))}
    elsif @dealer.cards.count < 3
      @dealer.add_card(@deck.cards.delete_at(rand(0..@deck.cards_number)))
    end
  end

  def player_cards
    @player.points_of_cards(SHOW)
  end

  def dealer_cards
    @dealer.points_of_cards(HIDE)
  end

  def choise_of_dealer
    count_of_cards = @dealer.cards.count
    if @dealer.points < 17 && count_of_cards < 3
      add_cards_dealer
      puts "\nИгрок #{@dealer.name} взял карту."
    else
      puts "\nИгрок #{@dealer.name} не взял карту."
    end
  end

end
