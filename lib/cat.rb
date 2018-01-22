class Cat
  # code goes here

  attr_accessor :mood
  attr_reader :name

  def initialize(name) #initializes with a name
    @name = name #expect(cat.name).to eq("crookshanks") #can't change its name; expect { cat.name = "mr. whiskers" }.to raise_error
    @mood = "nervous" #initializes with a nervous mood; expect(cat.mood).to eq("nervous"); change_mood = #can change its mood,  cat.mood = "playful", expect(cat.mood).to eq("playful")
  end

end
