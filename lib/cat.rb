require 'pry'
class Cat
  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous"
    #binding.pry
  end
  def mood=(mood)
    #outcome: refused
    #name change request
    @mood = mood
    #binding.pry
  end
  def name
    @name
  end
  def mood
    @mood
    #binding.pry
  end
end
