class Owner

  attr_accessor :name, :pets, :fishes, :cats, :dogs
  attr_reader :species

  @@all = []
  

  def initialize(name)
    @name = name
    @pets = {:fishes => [],:cats => [], :dogs => []}
    @@all<<self
    @species = "human"

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes]<<fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats]<<cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs]<<dog
    dog
  end

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key,value|
      value.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.each do |key,value|
      value.clear
    end
  end

  def list_pets
    counter = @pets.collect {|key,value| value.count}
    fish = counter[0]
    cats = counter[1]
    dogs = counter[2]
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end



end