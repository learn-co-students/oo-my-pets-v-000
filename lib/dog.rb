#rspec ./spec/dog_spec.rb:7 # Dog can initialize a dog
#rspec ./spec/dog_spec.rb:11 # Dog initializes with a name
#rspec ./spec/dog_spec.rb:19 # Dog initializes with a nervous mood
#rspec ./spec/dog_spec.rb:23 # Dog can change its mood
class Dog
  # code goes here
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  def name
    @name
  end
end
