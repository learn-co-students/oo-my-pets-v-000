class Fish
  
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name = "Nemo", mood = "nervous")
    @name = name
    @mood = mood
  end

  def owner_name
    if self.owner
      self.owner.name
    else
      nil
    end
  end


end