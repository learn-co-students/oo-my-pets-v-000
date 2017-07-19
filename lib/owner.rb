class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets.each do |pets, pet_array|
      if pets == :dogs
        pet_array.each do |dog_instance|
          dog_instance.instance_variable_set(:@mood, "happy")
        end
        #grab each instance of a dog and goes inside that instance and modifies its mood
      end
    end
  end

  def play_with_cats
    @pets.each do |pets, pet_array|
      if pets == :cats
        pet_array.each do |cat_instance|
          cat_instance.instance_variable_set(:@mood, "happy")
        end
        #grab each instance of a dog and goes inside that instance and modifies its mood
      end
    end
  end

  def feed_fish
    @pets.each do |pets, pet_array|
      if pets == :fishes
        pet_array.each do |fish_instance|
          fish_instance.instance_variable_set(:@mood, "happy")
        end
        #grab each instance of a dog and goes inside that instance and modifies its mood
      end
    end
  end

  def sell_pets
    #gets mood of all pets and sets them to "nervous"
    @pets.each do |pet, pet_array|
      pet_array.each do |pet_instance|
        pet_instance.instance_variable_set(:@mood, "nervous")
      end
        #grab each instance of a dog and goes inside that instance and modifies its mood
      end
    @pets.clear #sell all pets
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)." #go inside
  end
end
