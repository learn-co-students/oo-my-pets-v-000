class Owner
  
  attr_accessor :name, :count
  
  @@all = []
	
	def initialize(name)
		@name = name
		@@all << self
		
	end
	
	def self.all
		@@all
	end
	
	
	
end
