class Cat
  
  attr_reader :name, :mood


  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NameError, "You can't change the name of the cat."
  end

  def mood=(emotion)
    @mood = emotion
  end








end