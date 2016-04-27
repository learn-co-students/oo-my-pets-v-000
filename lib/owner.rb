require 'pry'
class Owner
  OWNERS = []
  def initialize(species)
    @species = species
    OWNERS << self
  end

  def self.all
    OWNERS
  end
end
