class Owner
attr_accessor  :name, :pets

@@all = []


  def initialize(name)
    @name = name
    @species = self.name
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
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

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(new_name)
    new_fish = Fish.new(new_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(new_name)
    new_cat = Cat.new(new_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(new_name)
    new_dog = Dog.new(new_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    @pets[:dogs].each do |x|
      x.mood = "nervous"
    end
      @pets[:cats].each do |x|
        x.mood = "nervous"
      end
        @pets[:fishes].each do |x|
          x.mood = "nervous"
        end
        @pets = @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def list_pets
    fish_names = @pets[:fishes].map do |x|
      x.name
    end
    dog_names = @pets[:dogs].map do |x|
      x.name
    end
    cat_names = @pets[:cats].map do |x|
      x.name
    end
    "I have #{fish_names.count} fish, #{dog_names.count} dog(s), and #{cat_names.count} cat(s)."
  end


end
