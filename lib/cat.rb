class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(cat_name)
    @name = cat_name
    @mood = "nervous"
  end

end
