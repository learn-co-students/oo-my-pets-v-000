class Fish
  	attr_accessor :mood		
	attr_reader :name, :owner

  
  	def initialize(name)
		@name = name
		@mood = "nervous"
  	end

  	def name=(name)
  		raise AssociationTypeMismatchError, "#{fish.class} received, Fish expected." if !fish.is_a?(Fish)
  		@name = name  	
 	end

 	def mood
		@mood
  	end


end