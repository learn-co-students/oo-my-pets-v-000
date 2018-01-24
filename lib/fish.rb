class Fish
  attr_accessor :mood, :owner

  # code goes here
    @@all = []
    def initialize(name)
      @name = name
      @mood = "nervous"
      @@all << self
    end
    def name
      @name.dup.freeze
    end

end
