#rspec ./spec/cat_spec.rb:7 # Cat can initialize a cat
#rspec ./spec/cat_spec.rb:11 # Cat initializes with a name
#rspec ./spec/cat_spec.rb:19 # Cat initializes with a nervous mood
#rspec ./spec/cat_spec.rb:23 # Cat can change its mood
class Cat
  # code goes here
  attr_accessor :mood
  def name
    @name
  end
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
