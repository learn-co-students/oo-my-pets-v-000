class Fish
attr_reader :name
attr_accessor :mood, :species

def initialize(name)
  @name=name
  @mood="nervous"
  @species= "fish"
end


end