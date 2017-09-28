class Owner

attr_accessor :name, :pets
attr_reader :species

@@all = []

  def initialize(species = "human", name = nil)
    @@all << self
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    instance_species = self.species
    "I am a #{instance_species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |doggie|
      doggie.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |kittie|
      kittie.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fishy|
      fishy.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |keys, values|
      values.each do |p|
        p.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    fish_n = self.pets[:fishes].length
    cat_n = self.pets[:cats].length
    dogs_n =self.pets[:dogs].length
    "I have #{fish_n} fish, #{dogs_n} dog(s), and #{cat_n} cat(s)."
  end

end
