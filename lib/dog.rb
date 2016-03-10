require 'pry'
class Dog

    attr_accessor :mood, :count, :owner
    attr_writer
    attr_reader :name

    @@all = []
    count = 0

    def initialize(name)
        @name = name
        @species = "dog"
        @mood = "nervous"
    end

    def mood
      @mood
    end

    def walking
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