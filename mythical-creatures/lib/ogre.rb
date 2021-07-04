class Ogre

  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
     human.encountered
     if human.notices_ogre?
       @swings += 1
       human.hit
     end

  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.wake
  end
end

class Human

  attr_reader :name, :encounter_counter, :hits
  def initialize
    @name = "Jane"
    @encounter_counter = 0
    @hits = 0
  end

  def encountered
    @encounter_counter += 1
  end

  def notices_ogre?
    @encounter_counter > 2 && @encounter_counter % 3 == 0
  end

  def hit
    @hits += 1
  end

  def knocked_out?
    @hits > 0 && @hits % 2 == 0
  end

  def wake
    @hits = 0
  end

end
