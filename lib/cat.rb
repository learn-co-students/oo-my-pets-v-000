class Cat

  attr_accessor :mood
  attr_reader :name, :owner # belongs to owner
  
  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  def mood
    @mood
  end
  
  # def owner=(owner)  # belongs to owner
  #   raise AssociationTypeMismatchError, "#{owner.class} received, Owner expected." if !owner.is_a?(Owner)
  #   @owner = owner
  #   owner.add_pet(self) unless owner.pets.include?(self)
  # end
  
end