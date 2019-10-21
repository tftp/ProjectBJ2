class TerminalInterface
  include PlayerMenu

  def initialize(game)
    @game = game

  end

  def start_game
    puts "Игра началась!"
    loop do
      processing("\nКарты раздаются")
      @game.in_begining
      @game.add_cards_player
      @game.add_cards_dealer
      @game.player_cards
      @game.dealer_cards
      loop do
        if @game.action_case(menu_for_player)
          puts @game.choise_of_dealer
          break
        else
          puts @game.choise_of_dealer
        end
      end
      processing("\nПодсчет результатов")
      @game.open_cards
      answer = @game.action_repeat(repeat_game?)
      if answer
        puts answer
        break
      end
    end
    puts 'Спасибо за игру!'
  end

end
