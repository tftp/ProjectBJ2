class Game
  include CardOptions
  include EndGame

  RATE = 50
  SHOW = true
  HIDE = false

  def initialize(player,dealer)
    @player = player
    @dealer = dealer
    @cards = []
    @deck
    @bank = 0
  end

  def action_case(value)
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

  def in_begining
    @deck = Deck.new(create_deck_of_cards)
    @player.check
    @dealer.check
  end

  def add_cards_player
    if @player.cards.empty?
      @bank += RATE
      @player.bank -= RATE
      2.times {@player.add_card(@deck.cards.delete_at(rand(0..@deck.cards_number)))}
    elsif @player.cards.count < 3
      @player.add_card(@deck.cards.delete_at(rand(0..@deck.cards_number)))
    end
  end

  def add_cards_dealer
    if @dealer.cards.empty?
      @bank += RATE
      @dealer.bank -= RATE
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
      "\nИгрок #{@dealer.name} взял карту."
    else
      "\nИгрок #{@dealer.name} не взял карту."
    end
  end

  def action_repeat(value)
    if @dealer.bank.zero?
      return "#{@dealer.name}  не может играть. Его банк = #{@dealer.bank}"
    end
    return if @player.bank.positive? && value

      return "Твой банк = #{@player.bank}"
  end

  def open_cards
    @player.points_of_cards(true)
    @dealer.points_of_cards(true)
    return dealer_win if @player.points > 21 && @dealer.points <= 21
    return player_win if @dealer.points > 21 && @player.points <= 21
    return game_lose if @dealer.points > 21 && @player.points > 21
    return unless @dealer.points <= 21 && @player.points <= 21

    return dealer_win if @dealer.points > @player.points
    return player_win if @dealer.points < @player.points
    return game_tie if @dealer.points == @player.points
  end

end
