class Owner
  
  attr_accessor :owner, :fish, :cat, :dog, :pets

  @pets = {fishes: [], cats: [], dogs: []}
  @@owner_count = 0

  def initialize(owner)
    @owner = owner
    @@owner_count += 1
  end

  def species(human)
    @species = species
    @species
  end

  def say_species
    puts "#{species}"
  end

  def buy_fish(name)
   fish = Fish.new(name)
    @@pets[0] << fish
    fish.owner = self
  end

  def list_pets
    @pets.each do |k,v|
      k.each do |pet|
        puts '#{pet}'
      end
    end
  end


end