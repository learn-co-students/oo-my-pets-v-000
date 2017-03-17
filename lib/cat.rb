class Cat
  # code goes here

  attr_accessor :mood, :name

  def initialize (name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end

  def name=(name)
    if @name.nil?
      @name = name
    else
      raise "Error: You can't change name now."
    end
  end

end
