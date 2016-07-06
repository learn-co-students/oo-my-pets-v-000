class Fish
  attr_reader :name
  attr_accessor :mood

    def initialize(name, mood="nervous")
      @name = name
      @mood = mood
      @species = "fish"
    end


end
