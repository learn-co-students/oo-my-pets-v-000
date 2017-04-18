class Cat

  attr_accessor :name

  def initialize(name)
    @name = name.freeze
  end


end
