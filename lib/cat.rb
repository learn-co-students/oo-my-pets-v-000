class Cat
  # code goes here

  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name
    @name
  end

  # def name=(name)
  #   self.name.dup.freeze
  # end

end
