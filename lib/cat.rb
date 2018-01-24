class Cat
	attr_accessor :mood		
	attr_reader :name, :owner

  
  	def initialize(name)
		@name = name
		@mood = "nervous"
  	end

  	def name=(name)
  		raise AssociationTypeMismatchError, "#{cat.class} received, Cat expected." if !cat.is_a?(Cat)
  		@name = name  	
 	end

  	def mood
  		@mood
  	end


end