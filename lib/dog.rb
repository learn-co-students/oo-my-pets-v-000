class Dog
  attr_reader :name, :mood
  attr_writer :mood

  def initialize (name)
    @name = name
    @mood = "nervous"
  end

end
