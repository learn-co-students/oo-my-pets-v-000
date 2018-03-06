class Dog
  attr_accessor :name, :mood

  def initialize(name, mood = "nervous")
    @name = name.freeze
    @mood = mood
  end

  def name=(name)
    raise NoMethodError if @name != name
  end

end
