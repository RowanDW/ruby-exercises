class Medusa

  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim.stared_at
    if @statues.length > 3
      restored = @statues.shift
      restored.released
    end
  end
end

class Person

  attr_reader :name, :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stared_at
    @stoned = true
    return self

  end

  def released
    @stoned = false
    return self
  end

  def stoned?
    @stoned
  end
end
