class Owner
  attr_accessor :name

  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end
end
