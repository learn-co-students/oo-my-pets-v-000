class Fish

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    self.name = name
    self.mood = "nervous"
  end

  private

  def name=(name)
    @name = name
  end

end
