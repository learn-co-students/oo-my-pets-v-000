class Dog
  attr_reader :name, :owner
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def owner=(new_owner)
    if new_owner.is_a? Owner
         if !(@owner == new_owner)
           @owner = new_owner
         end
    end
  end
end
