
class Dog
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def self.owner=(owner_name)
    @owner = owner_name
  end
end