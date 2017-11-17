#rspec ./spec/fish_spec.rb:7 # Fish can initialize a fish
#rspec ./spec/fish_spec.rb:11 # Fish initializes with a name
#rspec ./spec/fish_spec.rb:19 # Fish initializes with a nervous mood
#rspec ./spec/fish_spec.rb:23 # Fish can change its mood
class Fish
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
