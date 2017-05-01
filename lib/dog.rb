class Dog
  	attr_accessor :mood		
	attr_reader :name, :owner

  
  	def initialize(name)
		@name = name
		@mood = "nervous"
  	end

  	def name=(name)
  		raise AssociationTypeMismatchError, "#{dog.class} received, Dog expected." if !dog.is_a?(Dog)
  		@name = name  	
 	end

 	def mood=(mood)
 		@mood = mood
 	end

end