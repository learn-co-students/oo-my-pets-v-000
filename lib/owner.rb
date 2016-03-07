class Owner
  attr_accessor :name, :mood, :fsize, :csize, :dsize
  attr_writer :pets
  attr_reader :species


  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(name)
    @name = name
    self.pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def species
    if self.is_a?(Owner)
      "human"
    elsif self.is_a?(Cat)
      "cat"
    elsif self.is_a?(Dog)
      "dog"
    elsif self.is_a?(Fish)
      "fish"
    end
  end

  def say_species
    if self.species == "human"
      "I am a human."
    elsif self.species == "cat"
      "I am a cat."
    elsif self.species == "dog"
      "I am a dog."
    elsif self.species == "fish"
      "I am a fish."
    end
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    self.pets.each do |type, pets|
      if type == :dogs
        pets.each do |pet|
          pet.mood = "happy"
        end
      else
        next
      end
    end
  end

  def play_with_cats
    self.pets.each do |type, pets|
      if type == :cats
        pets.each do |pet|
          pet.mood = "happy"
        end
      else
        next
      end
    end
  end

  def feed_fish
    self.pets.each do |type, pets|
      if type == :fishes
        pets.each do |pet|
         pet.mood = "happy"
        end
      else
        next
      end
    end
  end

  def sell_pets
    self.pets.each do |type, pet|
      pet.each do |pt|
        pt.mood = "nervous"
      end
    end
    self.pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def list_pets
    fsize, csize, dsize = 0, 0, 0
    self.pets.each do |type, pet|
      if type == :fishes
        fsize = pet.length
      elsif type == :cats
        csize = pet.length
      elsif type == :dogs
        dsize = pet.length
      end
    end
    return "I have #{fsize} fish, #{dsize} dog(s), and #{csize} cat(s)."
  end

end

