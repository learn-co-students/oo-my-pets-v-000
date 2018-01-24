class Cat
  attr_accessor :mood, :owner


    def initialize(name)
      @name = name
      @mood = "nervous"
    end
    def name
      @name.dup.freeze
    end

end
