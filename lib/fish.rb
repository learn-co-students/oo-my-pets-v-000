require 'pry'
class Fish
  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  def name
    @name
  end
  def mood=(mood)
    #outcome: refused
    #name change request
    @mood = mood
    #binding.pry
  end
  def mood
    @mood
  end
end
