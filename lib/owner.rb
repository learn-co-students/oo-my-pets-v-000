class Owner

  attr_accessor :pets, :owner, :name, :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @owner = owner
    @@all << owner
    species
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def self.species=(species)
    if @species != nil
      message = "Can't change species."
      raise Exception.new(message)
    else
      @species = species
    end
  end

end
