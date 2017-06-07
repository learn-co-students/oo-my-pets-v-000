class Cat
  # code goes here
  #an attr_accessor sets a reader and a writer. This means our code can set the attribute and read the attribute
  # attr_reader, only allows us to read the attribute. When this is written we cannot call Class.attribute="" to set that attribute
  # attr_writer: sets that an attribute is written but read when called upon without further coding
#by setting up only the reader for name, the attribute will not be able to change itself outside initialize
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end


bob=Cat.new("Bobby")
