class Dog
  
  attr_accessor :mood
  attr_reader :name

  #writer
 # def name=(name)
  #  @name = name
  #end
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end



end