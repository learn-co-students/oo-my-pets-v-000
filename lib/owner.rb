class Owner

  attr_accessor :name, :pets
  attr_reader :species 

  @@all = []
  
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species = species
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
  end

  def say_species    
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)    
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets.each do |type, pets| 
      pets.collect {|dog| dog.mood = "happy"} if type == :dogs      
    end
  end

  def play_with_cats
    self.pets.each do |type, pets| 
      pets.collect {|cat| cat.mood = "happy"} if type == :cats      
    end
  end

  def feed_fish
    self.pets.each do |type, pets| 
      pets.collect {|fish| fish.mood = "happy"} if type == :fishes      
    end
  end

  def sell_pets
    self.pets.each do |type, pets| 
      pets.collect do |pet| 
        pet.mood = "nervous"
      end
      pets.clear      
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end


end