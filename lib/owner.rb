class Owner
  attr_accessor :owner, :pets

  def initialize(owner)
    @owner = []
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def all
    @owner << self
  end
end
