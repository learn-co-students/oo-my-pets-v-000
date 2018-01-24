class Owner
  # code goes here
  attr_accessor :owner, :name, :pets, :former_pets_temp
  attr_reader :species

  @@all = []
  @former_pets_temp = Hash.new { |h, k| h[k] = [] }

  def initialize(species)
    owner = self
    @@all << owner
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    self.all.clear
  end

  def self.all
    @@all
  end

  def self.count
    i = 0
    self.all.each do |x|
      i += 1
    end
    i
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs #located in the pets hash; how do i access them
    @pets[:dogs].map {|x| x.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|x| x.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|x| x.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets_data|
      @pets[type].map do |x|
        x.mood = "nervous"
      end
    end
    @former_pets_temp = @pets
    @pets.clear
  end

  def list_pets
    fish_no = @pets[:fishes].count
    dogs_no = @pets[:dogs].count
    cats_no = @pets[:cats].count
    "I have #{fish_no} fish, #{dogs_no} dog(s), and #{cats_no} cat(s)."
  end

end
