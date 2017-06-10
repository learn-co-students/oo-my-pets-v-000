class Dog
  # code goes here
  attr_accessor :name, :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def name=(new_name)
    raise ChangeNameError if new_name != name
    @name = new_name
    
  end

end
