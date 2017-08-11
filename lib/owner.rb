require "pry"
class Owner
  attr_accessor :owner, :pets
  @@all = {}

  def initialize(owner)
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: [] }

  end

  def self.all
    @@all = {}
  end

end
