class Fish
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = mood ||= 'nervous'
  end
end