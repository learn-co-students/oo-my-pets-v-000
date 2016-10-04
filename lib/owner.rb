require "pry"
class Owner

@@all = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs=> [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
    # binding.pry
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
   fish = Fish.new(name)
    @pets[:fishes] << fish
 #
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog

  end

  def walk_dogs
    dog_new_mood = @pets[:dogs].each { |dog| dog.mood = "happy"}
      dog_new_mood
  end

  def play_with_cats
    cat_new_mood =  @pets[:cats].each { |cat| cat.mood = "happy" }
      cat_new_mood
  end

  def feed_fish
    fish_new_mood = @pets[:fishes].each { |fish| fish.mood = "happy" }
      fish_new_mood
  end

  def sell_pets

     @pets.each do |animal_type, details|
       details.each { |animal| animal.mood = "nervous" }
     end
      #
     @pets.clear
  end


  def list_pets
    main_1 = []
      @pets.each do |species, details|
        main_1 << "#{details.count}"
      end
    # raise main_1[1].inspect
       "I have #{main_1[0]} fish, #{main_1[1]} dog(s), and #{main_1[2]} cat(s)."
  end

end
