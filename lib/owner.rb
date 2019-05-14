class Owner
  attr_accessor :owner, :pets

  @@all = []

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_all
    all.clear
  end
end
