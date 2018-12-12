require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  
  @@all = [] 

  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats=> []})
    @species = species
    @pets = pets
    @@all << self 
    
  end
     
    def self.all
      @@all
    end 
    
    def self.count 
      @@all.length
    end
    
    def self.reset_all 
      @@all = []
    end
   
    def say_species
      "I am a #{@species}."
    end 
    
   
    
    def pets
      @pets
    end 
    
    def buy_fish(name)
      new_fish = Fish.new(name)
      new_fish.owner = self
      pets[:fishes] << new_fish
    
    end 
    
    def buy_cat(name)
      new_cat = Cat.new(name)
      new_cat.owner = self
      pets[:cats] << new_cat
      
    end
    
    def buy_dog(name)
      new_dog = Dog.new(name)
      new_dog.owner = self
      pets[:dogs] << new_dog
      
    end 
    
    def walk_dogs
      pets[:dogs].each {|dog| dog.mood = "happy"}
      
    end 
    def play_with_cats
      pets[:cats].each {|cat| cat.mood = "happy"}
    end 
    
    def feed_fish
      pets[:fishes].each {|fish| fish.mood = "happy"}
    end 
    
    def sell_pets
      pets.each do |key, pet_breed| 
        pet_breed.each {|pet| pet.mood = "nervous"}
        pet_breed.clear
      end
    end
    
    def list_pets
      fish = pets[:fishes]
      fish_count = fish.count
      
      dog = pets[:dogs]
      dog_count = dog.count
      
      cat = pets[:cats]
      cat_count = cat.count
      
       "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
    end 
  
end