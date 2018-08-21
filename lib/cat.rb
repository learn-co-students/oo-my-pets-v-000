#cat.rb

class Cat
  attr_reader :name
  attr_accessor :mood

  def initialize(name)  # initialize a cat w/ nervous mood
    @name = name        # initialize w/ name that cannot be changed
    @mood = "nervous"
  end

end
