class Fish
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name


  def initialize(name)
    @name = name
    self.mood = "nervous"
  end
  
  # def owner=(owner)
  #   @owner=owner
  #   owner.pets['fishes']<< self unless owner.pets['fishes'].include?(self)
  # end

end