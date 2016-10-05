class Dog

  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    if @name != nil
      message = "Can't change name."
      raise Exception.new(message)
    else
      @name = name
    end
  end

  def self.mood
    @mood
  end

end
