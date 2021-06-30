class Wizard

  attr_reader :name, :bearded
  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    return 'sudo ' + spell
  end

  def cast
    @spells_cast += 1
    return "MAGIC MISSILE!"
  end

  def rested?
    @spells_cast < 3
  end

end
