module EndGame

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
