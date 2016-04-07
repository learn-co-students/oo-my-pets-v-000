class Owner

  attr_accessor :pets, :owner, :name
  @@all=[]
   @@count=0

  def initialize(owner)

   @owner = owner
  @@all << self
    @@count += 1
     @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
   @@all
   end

  def self.count
    #binding.pry
    @@count
  end

  def self.reset_all
   # binding.pry
    #self.all.clear
    @@count=0
  end

  def species
    @owner
  end

  def say_species
   "I am a #{species}."
  end

def buy_fish(fish_name)
  new_fish = Fish.new(fish_name)
  @pets[:fishes] << new_fish
end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs

   @pets[:dogs].each do |dog|
    dog.mood ="happy"
   end
  end

  def play_with_cats

    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do|fish|
      fish.mood = "happy"
    end
  end


  def sell_pets
        @pets.each do |a_key,a_array|
        a_array.each do |animal|
        animal.mood = "nervous"
        end
       a_array.clear
      end
   
  end


  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
