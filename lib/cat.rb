class Cat
  attr_accessor :mood
  attr_reader :name,:owner

  def initialize(name)
    @name = name.freeze
    @mood = "nervous"
  end

end
