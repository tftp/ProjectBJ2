module EndGame

  def dealer_win
    header =  "\nПобедил #{@dealer.name}"
    bank_player = "\nБанк игрока #{@player.name} = #{@player.bank}"
    bank_dealer = "Банк игрока #{@dealer.name} = #{@dealer.bank += @bank}"
    @bank = 0
    [header, bank_player, bank_dealer]
  end

  def player_win
    header =  "\nПобедил #{@player.name}"
    bank_player = "\nБанк игрока #{@player.name} = #{@player.bank += @bank}"
    bank_dealer = "Банк игрока #{@dealer.name} = #{@dealer.bank}"
    @bank = 0
    [header, bank_player, bank_dealer]
  end

  def game_lose
    header =  "\nОба игрока проиграли!"
    bank_player = "\nБанк игрока #{@player.name} = #{@player.bank}"
    bank_dealer = "Банк игрока #{@dealer.name} = #{@dealer.bank}"
    @bank = 0
    [header, bank_player, bank_dealer]
  end

  def game_tie
    header =  "\nНичья!"
    bank_player = "\nБанк игрока #{@player.name} = #{@player.bank += @bank / 2}"
    bank_dealer = "Банк игрока #{@dealer.name} = #{@dealer.bank += @bank / 2}"
    @bank = 0
    [header, bank_player, bank_dealer]
  end
end
