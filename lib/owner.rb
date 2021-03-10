class Owner
  # code goes here
  @@all = []
  attr_accessor :cat, :dog
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def species
    "human"
  end
  
  def say_species 
    "I am a human."
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
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cat_purchase = Cat.new(name, self)
  end
  
  def buy_dog(name)
    dog_purchase = Dog.new(name, self)
  end  
  
  def walk_dogs
    Dog.all.select do |dog| 
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end
  
  def feed_cats
    Cat.all.select do |cat| 
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def sell_pets
    Cat.all.select do |cat| 
      if cat.owner == self
        cat.mood = "nervous"
        cat.owner = nil
      end
    end
    Dog.all.select do |dog| 
      if dog.owner == self
        dog.mood = "nervous"
        dog.owner = nil
      end
    end
  end
  
  def list_pets
    owner_cats = Cat.all.select{|cat| cat.owner == self}
    owner_dogs = Dog.all.select{|dog| dog.owner == self}
    "I have #{owner_dogs.size} dog(s), and #{owner_cats.size} cat(s)."
  end
end












