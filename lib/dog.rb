class Dog
  # code goes here

  attr_accessor :mood
  attr_reader :name

  def initialize(name) #initializes with a name
    @name = name #expect(dog.name).to eq("Daisy") #can't change its name; expect { dog.name = "Fido" }.to raise_error
    @mood = "nervous" #initializes with a nervous mood; expect(dog.mood).to eq("nervous"); change_mood = #can change its mood,   dog.mood = "hungry", expect(dog.mood).to eq("hungry")
  end

end
