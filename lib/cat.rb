class Cat

  #can change mood
  attr_accessor :mood
  #not allowed to change cats name (that would be weird)
  attr_reader :name

  #instance of name and mood nervous cat
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end