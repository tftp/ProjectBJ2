class TerminalInterface
  include PlayerMenu

  def initialize(game)
    @game = game

  end

  def start_game
    puts "Start game"
    @game.add_cards_player
    @game.add_cards_dealer
    @game.player_cards
    @game.dealer_cards
#    @game.players_test
    menu_for_player
  end

end
