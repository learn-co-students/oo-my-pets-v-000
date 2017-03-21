class Cat

  @@cats = []

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@cats << self
  end

  def self.all
    @@cats
  end

end
