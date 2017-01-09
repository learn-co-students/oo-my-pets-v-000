class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "cat"
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    animal = @@all.detect do |cat|
      cat.name == name
    end
    animal.nil? ? self.new(name) : animal
  end


end
