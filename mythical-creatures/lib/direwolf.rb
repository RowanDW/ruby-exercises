class Direwolf

  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.size < 2
      @starks_to_protect << stark
      stark.protected
    end
  end

  def hunts_white_walkers?
    return @starks_to_protect.size == 0
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.unprotected
    return stark
  end

end

class Stark

  attr_reader :name, :location, :safe, :house_words
  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end

  def protected
    @safe = true
  end

  def unprotected
    @safe = false
  end

end
