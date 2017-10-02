class Owner
  # Owner should know about its pets, with @pets equal to {fishes: [], cats: [], dogs: []}
attr_accessor :name, :pets
@@owners = []
@@pets ={:fishes => [], :dogs => [], :cats => []}

  def initialize(owner)
    @owner = owner
    @@owner << @owner

  end

  def species(species)
    @species = species
  end
  #can read but not write/can't be changed

  def say_species
    puts  "I am a #{species}"
  end

  def buy_fish(fish_name)
    #purchase fish that is instance of Fish class
    fish = Fish.new(fish_name)
    pets[fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[cats] << cat
  end


  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[dogs] << dog
  end

  def walk_dogs(dog_name)
    dog.mood = "happy"
    dog = Dog.new(dog_name)
    @dog = dog_name
    pets[dogs] << dog
  end

  def play_with_cats(cat_name)

    #??cats = Cat.new(cat_name)
    cat.mood = "happy"
    @cat = cat_name
    pets[cats] << cat
  end

  def feed_fish(fish_name)

    #??cats = Cat.new(cat_name)
    fish.mood = "happy"
    @fish = fish_name
    pets[fish] << fish
  end

  def sell_pets

  end

  def list_pets
    dog_number = pets[dogs].count
    cat_number = pets[cats].count
    fish_number = pets[fish].count
#how do I list the contents of the array?
    pets.each do |type, name|
      puts name
    end
    puts "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
  end

 def self.all
   @@owners
 end

 def self.reset_all
   self.all.clear
 end

 def self.owner_count
   self.all.count
 end

 def self.pets
   @@pets
 end

end


  #
  # def buy_cat/dog/fish(name)
  #   make instance of the appropriate pet and initialize it with that name
  #   associate the new pet instance with the owner by adding it to the approp array-value of the pets hash stored in owner pets.
  #
  # end
  #
  # def owner plays with cat or feeds fish or walks dog, pet gets happier
  #     this has an effect on a mood method in their instances
  # end
  #
  # def pets
  #   this method stores all of an owner's pets the array it creates is full of instances of dogfish/cat class
  #
  #
