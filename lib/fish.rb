class Fish
attr_reader :name, :owner
attr_accessor :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end
