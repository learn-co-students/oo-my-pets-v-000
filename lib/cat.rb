require 'pry'
class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood


  def initialize(n)
    @name = n
    @mood = "nervous"
    #binding.pry
  end

  #  def change_mood=(mood)
  #    @mood = mood
  # end


end
