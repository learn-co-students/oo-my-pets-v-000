class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
    name.save
  end


end
