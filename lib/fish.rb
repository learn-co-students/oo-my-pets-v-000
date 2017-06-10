class Fish

  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

  def name=(name)
    raise AssociationTypeMismatchError if name != self.name
    @name = name
  end

end
