#require 'pry'
class Cat
  
  attr_reader :name
  attr_accessor :mood 
  

  def initialize(name = name)
    @name = name 
    @mood = "nervous"
   
   #binding.pry 
  end 

end

# def initialize(:name)   Using symbol name = :name because symbols are immutable

