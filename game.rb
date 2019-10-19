class Game
  include CardOptions
  attr_reader :status, :actions

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
      2.times {@player.add_card(@deck.cards.delete_at(rand(0..51)))}
    elsif @player.cards.count < 3
      @player.add_card(@deck.cards.delete_at(rand(0..51)))
    end
  end

  def add_cards_dealer
    if @dealer.cards.empty?
      @bank += 10
      2.times {@dealer.add_card(@deck.cards.delete_at(rand(0..51)))}
    elsif @dealer.cards.count < 3
      @dealer.add_card(@deck.cards.delete_at(rand(0..51)))
    end
  end

  def player_cards
    print "\nКарты игрока #{@player.name}: "
    @player.cards.each { |card| print " #{card.name} " }
    print "Очков: #{@player.points}  "
    puts "Банк = #{@player.bank}"
  end

  def dealer_cards
    print "\nКарты игрока #{@dealer.name}: "
    @dealer.cards.each { |card| print " #{card.name} " }
    print "Очков: #{@dealer.points}  "
    puts "Банк = #{@dealer.bank}"
  end

end
