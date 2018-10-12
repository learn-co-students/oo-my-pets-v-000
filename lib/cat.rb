class Cat
    attr_reader :name
    attr_accessor :nervous    #can't change its name
       #can change its mood 
   
   def initialize(name, mood = nervous )
     @name = name 
     @nervous = nervous 
     
   end 
   
end