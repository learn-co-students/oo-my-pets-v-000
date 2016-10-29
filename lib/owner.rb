class Owner
  @@all=[]
  attr_reader :species
  attr_accessor :name, :pets
  def self.all() @@all end
  def self.count() @@all.length end
  def self.reset_all() @@all=[] end
  def initialize(s) @species=s; @name=""; @pets={fishes:[],dogs:[],cats:[]}
     @@all<<self end
  def say_species() "I am a #{@species}." end
  def buy_fish(n) @pets[:fishes]<<Fish.new(n) end
  def buy_dog(n) @pets[:dogs]<<Dog.new(n) end
  def buy_cat(n) @pets[:cats]<<Cat.new(n) end
  def walk_dogs() @pets[:dogs].each { |d| d.mood="happy"} end
  def play_with_cats() @pets[:cats].each { |d| d.mood="happy"} end
  def feed_fish() @pets[:fishes].each { |d| d.mood="happy"} end
  def sell_pets
    @pets.each do |k,v|
      v.each do |p|
        p.mood="nervous"
      end
      @pets[k]=[]
    end
  end
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  # code goes here
end
