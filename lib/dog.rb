class Dog

  attr_accessor :mood   #can change its mood

  def initialize(name)  #can initialize a dog
    @name = name
    @mood = "nervous"  #initializes with a nervous mood
  end

  def name    #initializes with a name
    @name
  end

end