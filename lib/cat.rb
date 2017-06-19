class Cat
  attr_accessor :mood
  attr_reader :name #can set the name but not "get" and change it

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

end
