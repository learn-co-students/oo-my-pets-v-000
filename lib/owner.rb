class Owner
  @@all = []
  attr_accessor :owner_name
  attr_reader :species
  
  def initialize(owner_name)
    owner = Owner.new(owner_name)
    @owner_name = owner_name
  end
  
  def self.all
    @@all << self 
  end
  
  def self.reset_all 
    count = @@all.size
  end 
  
  def self.count 

  end
  
  def species
    @species = species
  end 
  
end