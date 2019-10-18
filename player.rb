class Player

  attr_accessor :bank, :cards, :points, :ace
  attr_reader :name

  def initialize(name)
    @name = name
    @cards = []
    @bank = 100
    @points = 0
    @ace = 0
  end

end
