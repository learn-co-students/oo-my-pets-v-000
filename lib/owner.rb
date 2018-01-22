require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name,  :pets

  @@all = Array.new
  @@count = 0

  def initialize(name)
    @@count += 1
    @@all << self
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs] = @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats] = @pets[:cats].collect do | cat |
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes] = @pets[:fishes].collect do | fish |
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets = @pets.collect do | pet_type, list_of_pets |

      @pets[pet_type] = @pets[pet_type].collect do | pet |
        pet.mood = "nervous"
      end
      #end pet_type loop
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
    # end sell_pets
  end

  def list_pets
    num_fish = @pets[:fishes].length
    num_cats = @pets[:cats].length
    num_dogs = @pets[:dogs].length
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end
