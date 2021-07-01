class Centaur

  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @actions = 0
  end

  def shoot
    if cranky? || laying?
      return "NO!"
    end
    @actions += 1
    return "Twang!!!"
  end

  def run
    if laying?
      return "NO!"
    end
    @actions += 1
    return "Clop clop clop clop!"
  end

  def cranky?
    if @actions > 2
      @cranky = true
    end
    return @cranky
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end

  def rested?
    @actions == 0
  end

  def sleep
    if standing?
      return "NO!"
    else
      @actions = 0
      @cranky = false
      return "Zzzzzz"
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def potion
    if laying?
      return "NO!"
    elsif rested?
      return "BARF!"
    end
    @actions = 0
    @cranky = false
    return "Glug"
  end
end
