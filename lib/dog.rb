class Dog

attr_reader :name, :mood


  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NameError, "You can't change the name of the dog."
  end

  def mood=(emotion)
    @mood = emotion
  end

end