class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [],:dogs => [],:cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    say_it = @species
    return "I am a #{say_it}."
  end

  def buy_fish (fish_name)
    new_fishpet = Fish.all.find{|fish|fish.name == fish_name}
    if new_fishpet == nil
      new_fishpet = Fish.new(fish_name)
    end
    @pets[:fishes] << new_fishpet
  end

  def buy_dog (dog_name)
    new_dogpet = Dog.all.find{|dog|dog.name == dog_name}
    if new_dogpet == nil
      new_dogpet = Dog.new(dog_name)
    end
    @pets[:dogs] << new_dogpet
  end

  def buy_cat (cat_name)
    new_catpet = Cat.all.find{|cat|cat.name == cat_name}
    if new_catpet == nil
      new_catpet = Cat.new(cat_name)
    end
    @pets[:cats] << new_catpet
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    @pets.each do |species,animals|
      animals.each do |pet|
        pet.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
