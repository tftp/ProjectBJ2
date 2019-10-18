require_relative 'game'
require_relative 'terminal_interface'
require_relative 'player'
require_relative 'dealer'

class BlackJack

  def initialize
    player = Player.new('OS')
    dealer = Dealer.new

    game = Game.new(player, dealer)

    TerminalInterface.new(game)
  end

end
