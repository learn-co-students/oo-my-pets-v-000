class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name


  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

  # def owner=(owner)
  #   @owner=owner
  #   owner.pets['dogs']<< self unless owner.pets['dogs'].include?(self)
  # end
end