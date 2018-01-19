class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @dog_count = 0
    @cat_count = 0
    @fish_count = 0
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
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @fish_count += 1
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @cat_count += 1
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @dog_count += 1
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    reset_pet_count
    mood_change
    clear_pets
  end

  def reset_pet_count
    @dog_count = 0
    @cat_count = 0
    @fish_count = 0
  end

#This can all be combined into one easy method!
# def sell_pets
#     pets.each do |species, animals|
#       animals.each do |animal|
#         animal.mood = "nervous"
#       end
#       animals.clear
#     end
#   end


  def clear_pets
    @pets.each {|k,v| v.clear}
  end

  def mood_change
    @pets.each do |k, v|
     v.each do |v|
       v.mood = "nervous"
     end
    end
  end

  def list_pets
    return "I have #{@fish_count} fish, #{@dog_count} dog(s), and #{@cat_count} cat(s)."
  end

end
