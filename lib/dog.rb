class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def name=(name)
    raise NoChangeError puts "Name already set to #{self.name}"
  end
end
