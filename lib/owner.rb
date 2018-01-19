
class Owner
    attr_reader   :species
    attr_accessor :name, :pets
    @@count = 0
    @@all = []

    def initialize (species)
      @species = species
      @@count += 1
      self.class.all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def self.all
      @@all
    end

    def self.count
      @@count
    end

    def self.reset_all
      @@count = 0
    end

    def say_species
      "I am a human."
    end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    puts @pets[:fishes].size
    puts @pets[:fishes]
  end

  def buy_dog(name)

    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

end


class Fish
  attr_reader  :name
  attr_accessor  :mood

  def initialize (name, mood = "nervous")
    @name = name
    @mood = mood
  end
end


owner = Owner.new("fff")
owner.buy_fish("ff")
