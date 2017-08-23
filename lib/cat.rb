class Cat
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

# was unnecessary to set the owner for this lab.  
  def owner=(owner)
    @owner = owner
    owner.buy_cat(self) unless owner.pets[:cats].include?(self)
  end
end
