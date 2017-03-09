require 'pry'
require_relative 'spec_helper.rb'

describe Cat do

  let(:cat) { Cat.new("crookshanks") }
  #binding.pry
  it "can initialize a cat" do
    expect(cat).to be_a(Cat)
  end

  it "initializes with a name" do
    expect(cat.name).to eq("crookshanks")
    #binding.pry
  end

  it "can't change its name" do
    #binding.pry
    expect { cat.name = "mr. whiskers" }.to raise_error
    #binding.pry
  end

  it "initializes with a nervous mood" do
    #binding.pry
    expect(cat.mood).to eq("nervous")
  end

  it "can change its mood" do
    cat.mood = "playful"
    expect(cat.mood).to eq("playful")
  end

end
