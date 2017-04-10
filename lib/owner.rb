class Owner
  attr_writer :pets
  attr_accessor :name
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def pets
    @pets.dup.freeze
  end
end
