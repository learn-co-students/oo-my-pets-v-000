class Owner

  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
 

    def initialize(species)
        @pets = {fishes: [], cats: [], dogs: []}
        @species = species
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
      @species = "I am a #{self.species}."
   end
  
   def buy_fish(name)
      self.pets[:fishes] << Fish.new(name)
      
   end 
   
   def buy_cat(name)
       self.pets[:cats] << Cat.new(name)
   end
   
   def buy_dog(name)
       self.pets[:dogs] << Dog.new(name)
   end 
   
   def walk_dogs
       self.pets[:dogs].each { |dog| dog.mood = "happy"}
   end 
   
   def play_with_cats
       self.pets[:cats].each { |cat| cat.mood = "happy"}
   end

   def feed_fish
      self.pets[:fishes].each { |fish| fish.mood = "happy"}
   end
   
   def list_pets
    "I have #{pet_count(:fishes)} fish, #{pet_count(:dogs)} dog(s), and #{pet_count(:cats)} cat(s)."
  end
  
   def sell_pets
    self.pets.each do | type, pets|
      pets.each { |pet| pet.mood = "nervous" }
      pets.clear
    end
  end
   
   def pet_count(pet)
       self.pets[pet].count
   end 
   
end