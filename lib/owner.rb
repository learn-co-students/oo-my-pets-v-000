class Owner
  attr_accessor :owner, :pets, :species

  def initialize(name)
    @name = name
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @species
  end

  def species

  end

  def say_species
    # self.say_species
    "I am a human."
  end

  def name
    @name = name
  end

  def buy_fish(pet_name)
    # self.buy_fish(pet_name)
  end

  def buy_cat(pet_name)
    # self.buy_cat(pet_name)
  end

  def buy_dog(pet_name)
    # self.buy_dog(pet_name)
  end

  def walk_dogs
  end

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
  end

  def list_pets
  end

end
