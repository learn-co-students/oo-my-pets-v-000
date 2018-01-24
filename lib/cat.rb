class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(new_cat)
    @name = new_cat
    @mood = "nervous"
  end

end
