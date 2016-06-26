require "pry"
class Owner

  attr_accessor :owner
  attr_reader :species, :pets

  @@count =0 #start at 0
  @@all =[]

  def initialize(species)
    @pets={
          :fishes => [],
          :dogs => [],
          :cats => []
     }
    @species = species
    @@count +=1 #count every instance that hass been created
    @@all << self #store every instance of owner into this array
    @owner = owner
  end

  def self.all
    @@all
  end

  def self.reset_all
  # check to see if owners were created and if they are delete them
    self.all.clear unless !self.all.include?(self) #delete_if {|x| x = self }
    # binding.pry
  end

  def say_species
    puts "I am a #{species}"
  end

end
