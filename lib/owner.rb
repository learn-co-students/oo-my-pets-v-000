class Owner

attr_accessor :name, :pets 
attr_reader :species 

@@all = []
@@count = 0 


def initialize(name) 
  @name = name 
  @@all << self 
  @@count += 1
  @species = "human"
  @pets = {:cats => [], :dogs => [], :fishes => [] }
end 

def say_species 
  "I am a human." 
end 

def self.all
  @@all 
end 

def self.reset_all
  @@all = []
  @@count = 0 
end 

def self.count 
  @@count 
end 


def buy_fish(name)
  Fish.new 
end 


end