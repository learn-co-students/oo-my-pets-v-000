class Fish

  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NewNameError, "Can't change the fish's name to #{name}. Fish's name is set to #{@name}." if @name != name
  end

end
