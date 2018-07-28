class Owner

    attr_accessor :mood, :pets

    def initialize
      @pets = {fishes: [], cats: [], dogs: []}
      owners_name.freeze = owner.new
      owner.count
      mood = nervous
    end

    def pets_action
    if play_with_cats
      cat.mood = "happy"
    elsif feed_fish
      fish.mood = "happy"
    else walk_dogs
      dog.mood = "happy"
    end
end




When an owner buys a new pet, the buy_cat/dog/fish method takes in an argument of a name. You must take that name and do the following:
Make a new instance of the appropriate pet, initializing it with that name.
Associate that new pet instance to the owner by adding it to the appropriate array-value of the @pets hash stored in the pets attr_accessor.
When an owner plays with a cat or feeds a fish or walks a dog, that pet will get happier. Remember that the pets method stores all of an owners pets. The @pets hash stored in
that method is full of instances of the Cat/Dog/Fish class. That means you can call Cat/Dog/Fish instance methods (such as .mood=) on those pets.
