require 'pry'

class Dog
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood
    @mood
  end

  def name=(name)
    if !name.nil?
        message = "Fish has already been assigned a name."
        raise RuntimeError.new(message)
      else
        @name = name
      end
    end

end
