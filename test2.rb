class Cat

  attr_accessor :mood
  attr_reader :name

  #writer
 # def name=(name)
  #  @name = name
  #end
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end


end

class Dog

  def initialize(name)
    @this_dogs_name = name
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end


  def name=(dog_name)
    @this_dogs_name = dog_name
  end
 
  def name
    @this_dogs_name
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

end

b = Dog.new("fido")
b.buy_cat("kurobe")



puts b.name