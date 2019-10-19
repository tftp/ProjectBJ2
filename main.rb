require_relative 'card_options'
require_relative 'methods_operation'
require_relative 'game'
require_relative 'terminal_interface'
require_relative 'player'
require_relative 'dealer'
require_relative 'deck'
require_relative 'card'

class BlackJack

  def initialize
    player = Player.new('OS')
    dealer = Dealer.new

    game = Game.new(player, dealer)

    TerminalInterface.new(game).start_game
  end

end
