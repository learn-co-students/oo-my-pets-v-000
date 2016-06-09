require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets, :buy_fish

  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all 
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a human."
  end



  def buy_fish(fish_name)
    my_fish = Fish.all.detect {|f| f.name == fish_name}
    @pets[:fishes] << my_fish if my_fish
    binding.pry
  end


  def buy_fish(fish_name)
    Fish.all.detect do |f|
      if f.name == fish_name
        f
      else
        false
      end
      @pets[:fishes] << f
    end
  end



end












