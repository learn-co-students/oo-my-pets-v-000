class Dog
    attr_reader :name  #can't change its name   #getter 
    attr_accessor :mood  #can change its mood 
  
   def initialize(name, mood="nervous")  #initializes with a nervous mood
     @name = name 
     @mood = mood 
     
  end 
  
end