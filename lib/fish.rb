class Fish
    # code goes here
attr_reader :name
attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

#  def owner_name(name)
#    self.owner = Owner.name
#  end
end
