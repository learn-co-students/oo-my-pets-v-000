class Cat
  attr_reader :name
  attr_writer :mood
  def initialize(name)
    @mood = "nervous"
    @name = name
  end

  def mood
    @mood
  end

  #def new(name)
  #  @pet = self.new(name)
  #end
end