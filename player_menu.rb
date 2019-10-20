# frozen_string_literal: true
module PlayerMenu
def menu_for_player
  puts "\nСделай правильный выбор!"
  puts '1 - Пропустить ход'
  puts '2 - Взять карту'
  puts '3 - Открыть карты'
  gets.chomp
end

def repeat_game?
  puts "\nЖелаешь сыграть ещё, странник?"
  puts '1 - Да'
  puts '2 - Нет'
  gets.chomp == '1'
end


def processing(sign)
  print sign
  30.times do
    print '.'
    sleep 0.1
  end
  puts
  puts
end
end
