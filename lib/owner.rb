require 'pry'

class Owner

attr_accessor :name, :pets

attr_reader :species

@@all = []
@@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def species
    @species = self.name
  end

  def say_species
    "I am a #{self.name}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    fish_name = Fish.new(fish_name)
    @pets[:fishes] << fish_name
  end #method

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name)
    @pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name)
    @pets[:dogs] << dog_name
  end

  def walk_dogs
    # @pets[:dogs].each do |dog| note to self, how to search for specific instance of dog
    #   if specific_dog.name == dog.name
    #     dog.mood = "excited"
    #   end
    # end

    @pets[:dogs].each {|instance| instance.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{ |instance| instance.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each{ |instance| instance.mood = "happy" }
  end

  def sell_pets
    @pets[:dogs].each {|instance| instance.mood = "nervous"}
    @pets[:cats].each {|instance| instance.mood = "nervous"}
    @pets[:fishes].each {|instance| instance.mood = "nervous"}
    @pets = Hash.new(0)
    @pets
  end

  def list_pets
    dog_counter = @pets[:dogs].count
    cat_counter = @pets[:cats].count
    fish_counter = @pets[:fishes].count

    return "I have #{fish_counter} fish, #{dog_counter} dog(s), and #{cat_counter} cat(s)."
  end


end
