require 'pry'

class Owner
  
  attr_accessor :name, :pets, :owners
  attr_reader :species
  

  @@owners = []

  def initialize(species)
    @species = species
   
    @pets = {fishes: [], 
            cats: [], 
            dogs: []}
    
    @@owners << self  
  end

  def buy_cat(name)
    name = cat.new
  end

  def buy_dog(name)
    name = dog.new
  end

  def buy_fish(name)
    name = fish.new
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end
  
  def self.reset_all
    @@owners.clear
  end
  
  def species_error
    raise ImproperGeneticActionError if self.species != "human"
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish
    # if the owner buys a fish, it will go into the array of values for the fish key
    # and each fish that's added will be an instance of the Fish class
    
    #it 'can buy a fish that is an instance of the Fish class' do 
    #     expect(owner.pets[:fishes].count).to eq(0)
    #     owner.buy_fish("Bubbles")
    #     owner.pets[:fishes].each do |fish|
    #       expect(fish).to be_a(Fish)
    #     end
    #     expect(owner.pets[:fishes].count).to eq(1)
    #   end
  end

end