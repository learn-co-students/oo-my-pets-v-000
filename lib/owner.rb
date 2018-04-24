
class Owner
    attr_reader   :species
    attr_accessor :name, :pets
    @@count = 0
    @@all = []

    def initialize (species)
      @species = species
      @@count += 1
      self.class.all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def self.all
      @@all
    end

    def self.count
      self.all.size
    end

    def self.reset_all
      self.all.clear
    end

    def say_species
      "I am a #{@species}."
    end

  def buy_fish(name)
    fish  = Fish.new(name)
    @pets[:fishes]  <<  fish
  end

  def buy_dog(name)

    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

    def list_pets
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end

  def sell_pets
    @pets.each do |type, name_array|
      name_array.each do |pet|
        pet.mood = "nervous"
        #name_array.delete(pet)
      end
    end
    @pets = {}
  end


  end
