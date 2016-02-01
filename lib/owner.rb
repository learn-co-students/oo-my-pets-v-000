require'pry'
class Owner
  
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(species)
  	@species = species
  	@pets = {:fishes => [], :dogs => [], :cats => []}
  	@@all << self
  end
  
  def self.all 
  	@@all 
  end
  
  def self.reset_all
  	self.all.clear
  end
  
  def self.count
  	self.all.size
  end
  
  def say_species
  	"I am a #{@species}."
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
  	set_mood(@pets[:dogs], "happy")
  end
  
  def play_with_cats
  	set_mood(@pets[:cats], "happy")
  end
  
  def feed_fish
  	set_mood(@pets[:fishes], "happy")
  end
  
  def set_mood(array, feeling)
  	array.each {|pet| pet.mood = feeling}
  end
  
  def sell_pets
  	set_mood(@pets.values.flatten, "nervous")
  	@pets.keys.each  {|k| @pets[k].clear}
  end
  
  def list_pets
  	fish = @pets[:fishes].size
  	cats = @pets[:cats].size
  	dogs = @pets[:dogs].size
  	"I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
  
end