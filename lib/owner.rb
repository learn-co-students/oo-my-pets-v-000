class Owner
@@all = [] #keeps track of the owners created

attr_accessor :pets

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end
  end
