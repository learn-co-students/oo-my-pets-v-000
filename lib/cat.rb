class Cat
  attr_writer :mood

  def initialize (name)
    @name = name
    @mood = "nervous"
  end

  def name
    @name.dup.freeze
  end

  def mood
    @mood.dup.freeze
  end
end
