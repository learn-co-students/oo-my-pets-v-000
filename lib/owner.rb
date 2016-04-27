require 'pry'
class Owner
  attr_accessor :owner
  def initialize(owner)
    @owner = owner
    @all = []
  end

  def self.all
    @all << self
  end
end
