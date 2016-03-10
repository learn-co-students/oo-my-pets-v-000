require 'pry'
class Fish

    attr_accessor :mood, :count, :owner
    attr_writer
    attr_reader :name

    @@all = []
    count = 0

    def initialize(name)
        @name = name
     #   count += 1
        @species = "fish"
        @mood = "nervous"
        @owner
    end

    def mood
      @mood
    end

    def self.owner(name)
        self.owner = Owner.new(name)
    end

    def feeding
    end

    def playing
    end

    def self.all
        @@all
    end

    def self.reset_all
       @@count = 0
    end
end