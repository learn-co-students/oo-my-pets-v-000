class Owner
  attr_reader :species
  attr_accessor :name, :fishes, :dogs, :cats, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def name=(name)
    @name= name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].collect {|instance| instance.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect {|instance| instance.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect {|instance| instance.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |key,value|
      value.each {|instance| instance.mood = "nervous"}
      value.clear
    end
  end

  def list_pets
    fish_amount = @pets[:fishes].count
    cat_amount = @pets[:cats].count
    dog_amount = @pets[:dogs].count
    return "I have #{fish_amount} fish, #{dog_amount} dog(s), and #{cat_amount} cat(s)." 
  end

end
