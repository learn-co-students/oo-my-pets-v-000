
require 'pry'

class Owner
  # code goes here

attr_reader :name, :species

  def initialize(name)
    @name = name
  end

  def name
    @name
      #binding.pry
  end

def species
  @species = species
end


  def say_species
    puts @species
  end

end
