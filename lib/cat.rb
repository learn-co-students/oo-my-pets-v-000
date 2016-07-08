class Cat

  attr_accessor :mood

  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name
    @name.freeze
  end


end
