module CardOptions
def create_deck_of_cards
  suit = [9824, 9827, 9829, 9830]
  4.times do |suit_number|
    suit_str = '' << suit[suit_number]
    2.upto(10) do |number|
      name = number.to_s + suit_str
      @cards ||= []
      @cards << Card.new(name, number)
    end
    @cards ||= []
    name = 'J' + suit_str
    @cards << Card.new(name, 10)
    name = 'Q' + suit_str
    @cards << Card.new(name, 10)
    name = 'K' + suit_str
    @cards << Card.new(name, 10)
    name = 'T' + suit_str
    @cards << Card.new(name, 11)
  end
  @cards
end

def select_card
  @cards[rand(0..51)]
end

def mixed_cards
  @cards.each { |card| card.busy = false }
end
end
