class Dragon

  attr_reader :name, :color, :rider, :hunger
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = 3
  end

  def hungry?
    @hunger > 0
  end

  def eat
    @hunger -= 1
  end
end
