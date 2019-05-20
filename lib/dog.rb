class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def name=(name)
    raise NoMethodError if @name = name
  end

  # def mood
  #   @mood
  # end
  #
  # def mood=(mood)
  #   @mood = mood
  # end
end
