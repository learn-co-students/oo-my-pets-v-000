class Cat
  attr_accessor :mood
  attr_reader :name

  #can initialize a Cat with a name
  #name cannot be changed. - use a attr_reader
  #initialize with a nervous mood
  #mood can be changed - attr_accessor
  def initialize(name)
    @name = name
    @mood = "nervous"
  end





end
