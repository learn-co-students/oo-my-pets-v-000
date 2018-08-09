class Dog

  attr_accessor :mood, :owner
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  # def new_dog(name)
  #   my_new_dog = self.new(name)
  #   my_new_dog.owner_name = @owner
  #   my_new_dog
  # end
  
end