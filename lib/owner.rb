class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :new_species
  @@all=[]
  @@count=0
  
  def initialize (new_species)
      @owner
      @new_species=new_species
      @@all << self
      @@count=@@count+1
      @pets={:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
      @@all
  end
  
  def self.reset_all
     @@all.clear
     @@count=0
  end
  
  def self.count
      @@count
  end
  
  def species
     @new_species 
  end
  
  def say_species
      return "I am a #{@new_species}."
  end
  
  def name
  @name
  end
  
  def pets
    @pets  
  end
  
  def buy_fish(fish)
     new_fish=Fish.new(fish)
     @pets[:fishes] << new_fish
  end
  
  def buy_cat(cat)
       new_cat=Cat.new(cat)
     @pets[:cats] << new_cat
  end
  
  def buy_dog(dog)
       new_dog=Dog.new(dog)
     @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
        dog.mood="happy"
                    end
  end
  
  def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood="happy"
                    end
  end
  
  def feed_fish
     @pets[:fishes].each do |fish|
         fish.mood="happy"
                        end
  end
  
  def sell_pets
  @pets.each do |key,value|
      value.each do |animal|
          animal.mood="nervous"
                end
            end
            
    @pets.each do |key,value|
        value=value.clear
                end
  end
  
  def list_pets
     a=@pets[:fishes].length 
     b=@pets[:dogs].length
     c=@pets[:cats].length
     return "I have #{a} fish, #{b} dog(s), and #{c} cat(s)."
  end
end