
class Dog
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name)
    self.name = name
    self.mood = "nervous"
  end
  
  def name=(name)
    if @name == nil
      @name = name
    else
      raise NoMethodError, "This dog already has a name its #{self.name}"
    end
  end
end