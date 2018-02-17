require_relative 'spec_helper.rb'

putsdescribe Cat do

  let(:cat) { Cat.new("crookshanks") }

  puts it "can initialize a cat" do
    expect(cat).to be_a(Cat)
  end

  puts it "initializes with a name" do
    expect(cat.name).to eq("crookshanks")
  end

  puts it "can't change its name" do
    expect { cat.name = "mr. whiskers" }.to raise_error NoMethodError
  end

  puts it "initializes with a nervous mood" do
    expect(cat.mood).to eq("nervous")
  end

  puts it "can change its mood" do
    cat.mood = "playful"
    expect(cat.mood).to eq("playful")
  end

end
