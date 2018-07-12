class Owner
  
  attr_accessor :pets, :name
  attr_reader   :species
  @@all = []
  
# Class Methods #

  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

# Instance Methods # 

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end
  
   def say_species
    "I am a #{self.species}."
   end
   
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end 

    def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
 def sell_pets
    self.pets.each do | pet_type, each_pet |
      each_pet.each do | to_a_pet |
        to_a_pet.mood = "nervous"
      end
      each_pet.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end #end class