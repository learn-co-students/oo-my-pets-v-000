class Owner
  attr_accessor :pets, :name
@@all = []

def initialize(name)
@pets = {fishes: [], cats: [], dogs: []}
@name =name
@@all << self
@species = "human"
end

def self.all
  @@all 
end

def self.reset_all
  @@all = []
end

def self.count 
  @@all.length
end

def species
  @species.dup.freeze
end

def say_species 
x=species
"I am a #{x}."
end

def buy_cat(cat_name)
  cat = Cat.new(cat_name)
  (@pets[:cats]<<cat)
  @@all = @@all<<cat
end

def buy_dog(dog_name)
  dog = Dog.new(dog_name)
  (@pets[:dogs]<<dog)
  @@all<<dog
end

def buy_fish(fish_name)
  fish = Fish.new(fish_name)
  (@pets[:fishes]<<fish)
  @@all<<fish
end

def walk_dogs
  @pets[:dogs].collect{|s| s.mood= "happy"}
end

def play_with_cats
  @pets[:cats].collect{|s| s.mood = "happy"}
end

def feed_fish
  @pets[:fishes].collect{|s| s.mood = "happy"}
end

def sell_pets 
  self.pets.each{|type, pets| pets.each {|pet| pet.mood = "nervous"}}
  @pets ={}
end

def list_pets
  cat_number=@pets[:cats].length
  dog_number=@pets[:dogs].length
  fish_number=@pets[:fishes].length
  "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
end 



end