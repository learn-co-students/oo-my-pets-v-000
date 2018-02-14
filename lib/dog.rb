class Dog
  attr_accessor :mood
   attr_reader :name

      def initialize( name, mood="nervous" )
         @name = name
         @mood = "nervous"
       end

end


#   can initialize a dog (FAILED - 1)
#   initializes with a name (FAILED - 2)
#   can't change its name (FAILED - 3)
#   initializes with a nervous mood (FAILED - 4)
#   can change its mood (FAILED - 5)
