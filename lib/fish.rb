class Fish
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def escape_bowl
    new_owner = Owner.new("Human")
    new_owner.pets[:fishes] << self
    new_owner.name = "Ocean"
    new_owner.name
  end
end
