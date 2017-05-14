class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

  def self.all
    @@owners
  end



end