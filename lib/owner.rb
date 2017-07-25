class Owner
  # code goes here
  attr_accessor :pets, :owner, :fish, :cat, :dog
  @@all = []


  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << @owner
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.reset_all
    @@all.clear
  end



end
