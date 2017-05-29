class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []
  @@owner_count= 0

  def initialize(name)
    @name= name
    @@owners << self
    @@owner_count +=1
    @pets = {fishes: [], dogs: [], cats: [] }
  end

  def self.all
    @@owners
  end

  def reset_all
    @@owners.clear
  end


end
