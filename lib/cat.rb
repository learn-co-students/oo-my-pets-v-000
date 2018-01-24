class Cat
  # initialize cat with argument name, use attr_reader
  attr_accessor :mood
  attr_reader :name

  def initialize(name,mood="nervous")
    @name = name
    @mood = mood
  end

end
