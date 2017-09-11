class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name) #can initialize an owner #expect(owner).to be_a(Owner)
    @@all << self
    @name = name   #instance methods = can have a name; Owner has a name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all #keeps track of the owners that have been created
    @@all #expect(Owner.all).to include(owner)
  end

  def self.reset_all #can reset the owners that have been created
    #Owner.reset_all
    @@all.clear #count #expect(Owner.count).to eq(0)
  end

  def self.count #can count how many owners have been created
    #Owner.reset_all
    #Owner.new("human")
    @@all.size #count #expect(Owner.count).to eq(1)
  end

  #instance methods = 1.) initializes with a species; 2.) can\'t change its species; - Owner can\'t change its species

  def species
   @species = "human" #expect(owner.species).to eq("human")
   #expect { owner.species = "hamster" }.to raise_error
  end

  #instance methods = can say its species; Owner calls its own species

  def say_species
   return "I am a human." #expect(owner.say_species).to eq("I am a human.")
  end

  #instance methods = initialized with a pets attribute as a hash with 3 keys - Owner can buy a pet

  def pets #stores all of the owners pets
    @pets #expect(owner.pets).to eq({:fishes => [], :dogs => [], :cats => []})
  end

  #instance methods = can buy a fish that is an instance of the Fish class; Owner can buy a pet(FISH)

  def buy_fish(name) # expect(owner.pets[:fishes].count).to eq(0)
    new_fish = Fish.new(name)  # owner.buy_fish("Bubbles")
    self.pets[:fishes] << new_fish  # owner.pets[:fishes].each { |fish| expect(fish).to be_a(Fish)}
    new_fish   # expect(owner.pets[:fishes].count).to eq(1)
  # = knows about its fishes; Owner knows all about its pets - Owner sets name of pet, the pet can\'t change its name
    # owner.buy_fish("Bubbles")
    # expect(owner.pets[:fishes][0].name).to eq("Bubbles")
  end

  #instance methods = can buy a cat that is an instance of the Cat class; Owner can buy a pet(CAT)

  def buy_cat(name) # expect(owner.pets[:cats].count).to eq(0)
    new_cat = Cat.new(name) # owner.buy_cat("Crookshanks")
    self.pets[:cats] << new_cat # owner.pets[:cats].each { |cat| expect(cat).to be_a(Cat) }
    new_cat   # expect(owner.pets[:cats].count).to eq(1)
  # = knows about its cats; Owner knows all about its pets - Owner sets name of pet, the pet can\'t change its name
    # owner.buy_cat("Crookshanks")
    # expect(owner.pets[:cats][0].name).to eq("Crookshanks")
  end

  def buy_dog(name) # expect(owner.pets[:dogs].count).to eq(0)
    new_dog = Dog.new(name) # owner.buy_dog("Snuffles")
    self.pets[:dogs] << new_dog # owner.pets[:dogs].each { |dog| expect(dog).to be_a(Dog) }
    new_dog # expect(owner.pets[:dogs].count).to eq(1)
  # = knows about its dogs; Owner knows all about its pets - Owner sets name of pet, the pet can\'t change its name
    # owner.buy_dog("Snuffles")
    # expect(owner.pets[:dogs][0].name).to eq("Snuffles")
  end

  # Instance methods = change a pet\'s mood by...
    #  - walking it
    #  - feeding it
    #  - playing w/it

  def walk_dogs #walks the dogs which makes the dogs' moods happy
    # dog = Dog.new("Daisy")
    # owner.pets[:dogs] << dog
    # owner.walk_dogs
    # expect(dog.mood).to eq("happy")
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats #plays with the cats which makes the cats moods happy"
    # cat = Cat.new("Muffin")
    # owner.pets[:cats] << cat
    # owner.play_with_cats
    # expect(cat.mood).to eq("happy")
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish #feeds the fishes which makes the fishes' moods happy
    # fish = Fish.new("Nemo")
    # owner.pets[:fishes] << fish
    # owner.feed_fish
    # expect(fish.mood).to eq("happy")
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  #instance methods - sell all its pets (when Owner moves to college)

  def sell_pets #Owner can sell all its pets, which make them nervous
    # fido = Dog.new("Fido")
    # tabby = Cat.new("Tabby")
    # nemo = Fish.new("Nemo")
    # [fido, tabby, nemo].each {|o| o.mood = "happy" }
    # owner.pets = {
    #   :dogs => [fido, Dog.new("Daisy")],
    #   :fishes => [nemo],
    #   :cats => [Cat.new("Mittens"), tabby]
    # }
    # owner.sell_pets
    # owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
    # [fido, tabby, nemo].each { |o| expect(o.mood).to eq("nervous") }
    pets.each do |type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets #can list off its pets
    # owner.buy_fish("Bubbles")
    # owner.buy_fish("Nemo")
    # owner.buy_cat("Crookshanks")
    # owner.buy_dog("Fido")
    # owner.buy_dog("Snuffles")
    # owner.buy_dog("Charley")
    # expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
