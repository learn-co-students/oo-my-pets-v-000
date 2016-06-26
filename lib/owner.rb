class Owner

  attr_reader :owner
@all =[]

  def initialize
    @owner = 0
  end

  def self.all
    @owner +=1
  end

end
