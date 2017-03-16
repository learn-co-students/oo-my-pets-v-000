class Dog
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    if @name.nil?
      @name = name
    else
      raise 'Error: cannot change name'
    end
  end

  def mood=(mood)
    @mood = mood
  end

end
