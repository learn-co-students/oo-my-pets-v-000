class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name


  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

  # def owner=(owner)
  #   @owner=owner
  #   owner.pets['cats']<< self unless owner.pets['cats'].include?(self)
  # end
end