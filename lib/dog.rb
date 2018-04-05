class Dog
  attr_accessor :mood, :owner
  
   attr_reader :name 
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end
  
  # def mood=(mood)
  #   @mood = mood 
  # end
end