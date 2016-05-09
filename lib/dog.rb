class Dog

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NewNameError, "Can't change the dog's name to #{name}. Dog's name is set to #{@name}." if @name != name
  end

end
