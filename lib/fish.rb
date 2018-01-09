class Fish
    attr_accessor :mood, :owner
    #attr_accessor because you want to be able to change mood, and has relationship with owner
    attr_reader :name
    #attr_reader because you want to set name, but have only owner be able to change it
    def initialize(name)
        @name = name
        @mood = "nervous"
    end
end