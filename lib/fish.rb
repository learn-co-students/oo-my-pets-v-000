class Fish
  attr_accessor :mood
  attr_reader :name

  # initialize with name and default mood
  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

end
