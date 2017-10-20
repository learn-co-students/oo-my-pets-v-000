class Owner

  attr_accessor :pets, :name

  attr_reader :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    Owner.all << self
  end

  def say_species
      return "I am a #{species}."
  end

  def self.all #returns array of all owners
    @@all
  end

  def self.reset_all # clears array that holds all instances of owner
    @@all.clear
  end

  def self.count # displays a count of all owner classes created
    @@all.length
  end

  def buy_fish(name)
    fish = Fish.new(name)
    fishes = @pets[:fishes]
    fishes << fish
  end
  def buy_cat(name)
    cat = Cat.new(name)
    cats = @pets[:cats]
    cats << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dogs = @pets[:dogs]
    dogs << dog
  end

  def walk_dogs #walks the dogs which makes their moods happy
    @pets.each do |pet_type, pet|
      if pet_type == :dogs
        pet.each do |dog|
          dog.mood= "happy"
        end
      end
    end
  end

  def play_with_cats #plays with the cats and makes thier moods happy
    @pets.each do |pet_type, pet|
      if pet_type == :cats
        pet.each do |cat|
          cat.mood= "happy"
        end
      end
    end
  end

  def feed_fish #feeds the fish and makes their moods happy
    @pets.each do |pet_type, pet|
      if pet_type == :fishes
        pet.each do |fish|
          fish.mood= "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet|
      pet.each {|pet| pet.mood= "nervous"}
    end
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    # @pets.each do |pet_type, pet|
    #   pet_type.each do |pet|
      return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


  def sell_fish(name)
    @pets.each do |pet_type, pet|
      if pet_type == :fish
        pet.delete_if {|pet| pet.name == name}
      end
    end
  end

  def sell_cat(cat)
    #@pets.delete_if{[fish:] need to research this!!
  end

  def sell_dog(dog)
    #@pets.delete_if{[fish:] need to research this!!
  end

end
