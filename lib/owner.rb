class Owner
  attr_accessor :name, :fishes, :pets
  attr_reader :species
  @@all=[]


  def self.all
    @@all
  end
  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
      @pets= {:fishes => [], :cats =>[], :dogs =>[]}
    @@all << self
    @species=species

  end

  def say_species
      "I am a #{species}."
  end

    def buy_fish(f_name)
      @pets[:fishes] << Fish.new(f_name)
  end

  def buy_cat(c_name)
    @pets[:cats] <<Cat.new(c_name)
  end
  def buy_dog(d_name)
    @pets[:dogs] <<Dog.new(d_name)
  end

  def walk_dogs
    @pets[:dogs].each{|d|d.mood="happy"}
  end
  def play_with_cats
    @pets[:cats].each{|c|c.mood="happy"}
  end
  def feed_fish
    @pets[:fishes].each{|f|f.mood="happy"}
  end
  def sell_pets
      @pets.each{|type,name|name.each{|pet|pet.mood="nervous"}}
      @pets.map{|type,names|names.clear}
   end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end



end
  # code goes here
