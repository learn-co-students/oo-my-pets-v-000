class Owner
  attr_accessor :name, :pets, :mood
  attr_reader :species

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def say_species
    "I am a human."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
    pets[:fishes].count
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
    pets[:cats].count
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
    pets[:dogs].count
  end


  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
   self.pets.each do |type, arr|
      arr.each do |type_new|
       type_new.mood = "nervous"
      end
      arr.clear
    end
  end



  def list_pets
    dog = self.pets[:dogs].count
    cat = self.pets[:cats].count
    fish = self.pets[:fishes].count

   return "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end


end
