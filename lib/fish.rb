class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "fish"
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    animal = @@all.detect do |fish|
      fish.name == name
    end
    animal.nil? ? self.new(name) : animal
  end

end
