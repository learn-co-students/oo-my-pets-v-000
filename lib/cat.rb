class Cat
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def owner=(owner)
    @owner = owner
    owner.buy_cat(self) unless owner.pets[:cats].include?(self)
  end
end
