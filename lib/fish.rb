class Fish
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  # def initialize(name)
  #   @name = name
  #   @mood = "nervous"
  # end

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
