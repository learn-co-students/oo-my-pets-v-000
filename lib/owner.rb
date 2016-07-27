require 'pry'
class Owner
  # code goes here
attr_accessor :name, :pets
attr_reader :species
@@all = []
@@count = 0

  def initialize(species)
    @species = species
   @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

#Fish Methods
def find_fish(fish_name)
   @pets[:fishes]<<Fish.all.detect{|x| x.name == fish_name}
end

def new_fish(fish_name)
  fish = Fish.new(fish_name)
  @pets[:fishes]<<fish
end


  def buy_fish(fish_name)
  exists = false
  Fish.all.each do |x|
    if x.name == fish_name
    exists = true
    end
  end
  if exists == true 
    self.find_fish(fish_name)
    else 
    self.new_fish(fish_name)  
  end
end

def find_dog(dog_name)
   @pets[:dogs]<< Dog.all.detect{|x| x.name == dog_name}
end

  def new_dog(dog_name)
  dog = Dog.new(dog_name)
  @pets[:dogs]<<dog
  end


  def buy_dog(dog_name)
  exists = false
  Dog.all.each do |x|
    if x.name == dog_name
    exists = true
    end
  end
  if exists == true 
    self.find_dog(dog_name)
    else 
    self.new_dog(dog_name)  
  end
end


def find_cat(cat_name)
   @pets[:cats]<<Cat.all.detect{|x| x.name == cat_name}
  end

def new_cat(cat_name)
  cat = Cat.new(cat_name)
  @pets[:cats]<<cat
end

def buy_cat(cat_name)
  exists = false
  Cat.all.each do |x|
    if x.name == cat_name
    exists = true
    end
  end
  if exists == true 
    self.find_cat(cat_name)
    else 
    self.new_cat(cat_name)  
  end
end

  def walk_dogs
    @pets[:dogs].each do |x|
        x.mood = "happy"
    end
  end

    def play_with_cats
    @pets[:cats].each do |x|
        x.mood = "happy"
    end
  end

   def feed_fish
    @pets[:fishes].each do |x|
        x.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type,pets|
      pets.each do |x|
        x.mood = "nervous"
      end
    end
    @pets[:fishes].clear
    @pets[:dogs].clear
     @pets[:cats].clear
  end

  def list_pets
    
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    #binding.pry
  end

end 
