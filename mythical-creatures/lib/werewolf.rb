class Werewolf

  attr_reader :name, :location, :human, :hungry
  def initialize(name, location)
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    !@human
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if !@human
      @hungry = false
      return victim.get_eaten
    else
      return "#{@name} did not eat a victim."
    end
  end

  def change!
    if @human == true
      @human = false
      @hungry = true
    else
      @human = true
      @hungry = false
    end
  end


end
