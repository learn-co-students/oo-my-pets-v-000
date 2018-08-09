class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  # def self.new_cat(name)
  #   my_new_cat = self.new(name)
  #   my_new_cat.owner_name = @owner
  #   my_new_cat
  # end 
  
  # def owner_name=(name)
  #   self.owner = Owner.buy_cat(name)
  # end
end