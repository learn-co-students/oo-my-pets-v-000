class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def self.mood=(mood)
    @mood = mood
  end
end