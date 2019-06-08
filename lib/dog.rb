class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  attr_writer

  def initialize (name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end

  def owner
  end

end
