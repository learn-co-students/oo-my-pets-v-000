class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
  
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    
  end

  def self.all
    @@all 
  end
    
  def self.count
     self.all.length

   end

  def self.name=(name)
    @name = name
  end

  def self.reset_all
    @@all =[]  
  end

  def species=(species)
    raise SpeciesError, "You can't change the species of the cat."
  end

  def say_species
    return "I am a #{species}."
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
    @pets[:dogs].each do |dog| 
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat| 
      cat.mood = "happy"
    end
  end

    def feed_fish
    @pets[:fishes].each do |fish| 
      fish.mood = "happy"
    end
  end
  
  #@pets = {:fishes => [], :dogs => [], :cats => []}
  
  def sell_pets
    @pets.values.each do |individual_pet_obj_array|
      individual_pet_obj_array.each do |indi|
        indi.mood = "nervous"
      end
    end
    @pets.values.each do |obj|
      obj.clear
    end
  end
  
  def list_pets
    return "I have #{@pets[:fishes].length} #{@pets[:fishes][0].class.to_s.downcase}, #{@pets[:dogs].length} #{@pets[:dogs][0].class.to_s.downcase}(s), and #{@pets[:cats].length} #{@pets[:cats][0].class.to_s.downcase}(s)."

  end
  
end