
class Owner
  attr_accessor :name, :pets

  def self.all
      @@owners = []
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def initialize (name)
    @name =name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners.push(self)
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{@name}."
  end

  def buy_fish (fish_name)
    fish_name = Fish.new(fish_name)
    @pets[:fishes]<< fish_name
  end

  def buy_cat (cat_name)
    cat_name = Cat.new(cat_name)
    @pets[:cats]<< cat_name
  end

  def buy_dog (dog_name)
    dog_name = Dog.new(dog_name)
    @pets[:dogs]<< dog_name
  end

  def walk_dogs
    @pets[:dogs].collect{|obj| obj.mood="happy" }
  end

  def play_with_cats
    @pets[:cats].collect{|obj| obj.mood="happy" }
  end

  def feed_fish
    @pets[:fishes].collect{|obj| obj.mood="happy" }
  end

  def sell_pets
    @pets.each{|k,v|v.each{|obj|obj.mood="nervous"}}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
