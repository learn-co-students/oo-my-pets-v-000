class Owner
  # code goes here
  attr_accessor :all, :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
     "I am a human."
  end


  def buy_fish(name)
     pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
     pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
     pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].collect {|d| d.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].collect {|c| c.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].collect {|f| f.mood = "happy"}
  end

  def sell_pets
    pets.collect do |types, pets_hash|
        pets_hash.collect do |mood|
           mood.mood = "nervous"
        end
        pets_hash.clear
    end
  end

  def list_pets
    pets_string = ["I have"]
    pets.collect do |types, pets_hash|
    pets_string << pets_hash.length
      if types.to_s == "fishes"
        pets_string << "fish,"
      elsif types.to_s == "dogs"
        pets_string << "dog(s),"
      else
        pets_string << "cat(s)."

      end
    end
    pets_string.insert(-3, 'and').join(" ")
  end

end
