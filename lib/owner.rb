class Owner
  attr_accessor :owner

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

 def self.count
   @@all.count
 end

  def self.reset_all
    @@all.clear
  end
end
