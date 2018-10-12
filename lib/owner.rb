class Owner

attr_accessor :name, :pets, :fish 
attr_reader :species 

@@all = []
@@count = 0 


def initialize(name) 
  @name = name 
  @@all << self 
  @@count += 1
  @species = "human"
  @pets = {:cats => [], :dogs => [], :fishes => [] }
end 

def say_species 
  "I am a human." 
end 

def self.all
  @@all 
end 

def self.reset_all
  @@all = []
  @@count = 0 
end 

def self.count 
  @@count 
end 


def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end 

 def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end 

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog 
end 

def walk_dogs 
  pets[:dogs].map {|dog| dog.mood = "happy"}
end 

def play_with_cats 
  pets[:cats].collect {|cat| cat.mood = "happy"}
end 

def feed_fish
  pets[:fishes].map {|fish| fish.mood = "happy"}
end

def sell_pets
  pets[:fishes].map {|fish| fish.mood = "nervous"}
  pets[:cats].collect {|cat| cat.mood = "nervous"}
  pets[:dogs].map {|dog| dog.mood = "nervous"}

  pets.clear
end 

def list_pets
      fish = pets[:fishes].count 
      dog = pets[:dogs].count 
      cat = pets[:cats].count
"I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
end 



end 
