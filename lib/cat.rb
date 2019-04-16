class Cat

attr_writer :mood

	def initialize(name)
		@name=name
		@mood= "nervous"
	end

	def mood
		@mood
	end

	def name
		@name
	end


end
