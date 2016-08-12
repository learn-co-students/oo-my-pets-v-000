class Cat
  attr_accessor :mood         #can change its mood
  
  def name=(name)
    if @name.is_a? String    #check if @name is already something
      raise "name_error"     # if its already somthing then raise an error
    end
    @name = name
  end

  def name
    @name
  end


  def initialize(name) #Cat can initialize a cat
    @name = name
    @mood = "nervous"  #initializes with a nervous mood
  end


end
