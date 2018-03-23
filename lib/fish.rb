class Fish

    attr_accessor :breed, :color, :gender, :mood
    attr_reader :name

    @@all = []

    def initialize(name)
      @name = name
      @mood = mood || "nervous"
      @fishes = []
      @@all << self
    end

    def fishes
      @fishes
    end

    def add_fish(name)
      @fishes << @name
    end


end
