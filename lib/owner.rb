class Owner
#==========================================
  # INSTANCE ATTRIBUTES
#==========================================
  attr_accessor :name, :pets
  attr_reader :species
#==========================================  
  # CLASS
#==========================================
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
#==========================================  
  # INSTANCE
#==========================================
  def initialize(species)
    @species = species
    self.class.all << self
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{self.species}."
  end  
#=================FISH=========================   
  def buy_fish(name)
    fish = Fish.new(name); self.pets[:fishes] << fish
  end 
  
  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end
#=================CATS=========================   
  def buy_cat(name)
    cat = Cat.new(name); self.pets[:cats] << cat
  end
  
  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end
#=================DOGS=========================   
  def buy_dog(name)
    dog = Dog.new(name); self.pets[:dogs] << dog
  end
  
  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end
#==========================================   
  def sell_pets
    self.pets.each{|species, pets|
      pets.each{|pet| pet.mood = "nervous"}
    }
    self.pets.clear
  end
  
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
# === MORE LEGIBLE SOLUTION BELOW ===
# def list_pets
#   fish_cnt = self.pets[:fishes].count
#   dog_cnt = self.pets[:dogs].count
#   cat_cnt = self.pets[:cats].count
#   "I have #{fish_cnt} fish, #{dog_cnt} dog(s), and #{cat_cnt} cat(s)."
# end
end