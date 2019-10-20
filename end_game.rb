module EndGame
  def check_end_game?
    if @dealer.bank.zero?
      puts "#{@dealer.name}  не может играть. Его банк = #{@dealer.bank}"
      return true
    end
    return if @player.points.positive? && repeat_game?

    puts "Твой банк = #{@player.bank}"
    true
  end


  def open_cards
    @player.points_of_cards SHOW
    @dealer.points_of_cards SHOW
    dealer_win if @player.points > 21 && @dealer.points <= 21
    player_win if @dealer.points > 21 && @player.points <= 21
    game_lose if @dealer.points > 21 && @player.points > 21
    return unless @dealer.points <= 21 && @player.points <= 21

    dealer_win if @dealer.points > @player.points
    player_win if @dealer.points < @player.points
    game_tie if @dealer.points == @player.points
  end

  def dealer_win
    puts "\nПобедил #{@dealer.name}"
    sleep 1
    puts "\nБанк игрока #{@player.name} = #{@player.bank}"
    puts "Банк игрока #{@dealer.name} = #{@dealer.bank += @bank}"
    @bank = 0
    sleep 1
  end

  def player_win
    puts "\nПобедил #{@player.name}"
    sleep 1
    puts "\nБанк игрока #{@player.name} = #{@player.bank += @bank}"
    puts "Банк игрока #{@dealer.name} = #{@dealer.bank}"
    @bank = 0
    sleep 1
  end

  def game_lose
    puts "\nОба игрока проиграли!"
    sleep 1
    puts "\nБанк игрока #{@player.name} = #{@player.bank}"
    puts "Банк игрока #{@dealer.name} = #{@dealer.bank}"
    @bank = 0
    sleep 1
  end

  def game_tie
    puts "\nНичья!"
    sleep 1
    puts "\nБанк игрока #{@player.name} = #{@player.bank += @bank / 2}"
    puts "Банк игрока #{@dealer.name} = #{@dealer.bank += @bank / 2}"
    @bank = 0
    sleep 1
  end
end
