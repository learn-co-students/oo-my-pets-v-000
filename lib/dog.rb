class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all_dog = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all_dog<<self
  end

  def mood=(mood)
    @mood = mood
  end

  def self.all
    @@all_dog
  end

end
