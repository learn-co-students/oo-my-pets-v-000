class Fish
  # code goes here

  attr_accessor :mood
  attr_reader :name

  def initialize(name) #initializes with a name
    @name = name #expect(fish.name).to eq("Nemo") #can't change its name; expect { fish.name = "Goldy" }.to raise_error
    @mood = "nervous" #initializes with a nervous mood; expect(fish.mood).to eq("nervous"); change_mood = #can change its mood,  fish.mood = "excited", expect(fish.mood).to eq("excited")
  end

end
