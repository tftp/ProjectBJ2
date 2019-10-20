class TerminalInterface
  include PlayerMenu

  def initialize(game)
    @game = game

  end

  def start_game
    puts "Start game"
    @game.new_deck
    @game.add_cards_player
    @game.add_cards_dealer
    @game.player_cards
    @game.dealer_cards
#    @game.players_test
    loop do
      break if @game.actions(menu_for_player)
    end
    @game.player_cards
    @game.dealer_cards

  end

end
