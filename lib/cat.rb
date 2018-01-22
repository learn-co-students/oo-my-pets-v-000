class Cat
  attr_writer :mood
  attr_reader :name

  def initialize(name)
      @name = name
      @mood = "nervous"
  end

  def mood
    @mood
  end

end
