
class Cat
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  def name=(name)
    if @name == nil
      @name = name
    else
      raise NoMethodError, "Species is already set as #{self.name}"
    end
  end
  
end