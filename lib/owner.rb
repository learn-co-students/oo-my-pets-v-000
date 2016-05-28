class Owner
  attr_accessor :name, :pets, :owner
  attr_reader :species
  @@count = 0
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@count += 1
    @@all << self
  end


  def self.all; @@all; end

  def self.count; all.count; end

  def say_species; speak = "I am a #{self.species}."; speak end

  def self.reset_all; self.all.clear end

  def self.name(name); puts name end



  def buy_cat(name); @pets[cats] << Cat.new(name) end

  def buy_dog(name); @pets[dogs] << Dog.new(name) end

  def buy_fish(name); @pets[fish] << Fish.new(name) end
end
