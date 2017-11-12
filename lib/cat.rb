class Cat
  
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

  def add_a_cat
    raise ImproperSentienceActionError if !name.is_a?(Cat)
  end

end