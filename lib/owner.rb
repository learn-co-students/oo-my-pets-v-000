class Owner
  attr_accessor :name, :species

  @@owners = []

  def initialize(owner)
    @owner = owner
    
  end

end

# Owner
#   Class methods
#     keeps track of the owners that have been created (FAILED - 13)
#     can reset the owners that have been created (FAILED - 14)
#     can count how many owners have been created (FAILED - 15)
#     can initialize an owner (FAILED - 16)
#   instance methods
#     #species
#       initializes with a species (FAILED - 17)
#
# #say_species
#       can say its species (FAILED - 18)
#     #name
#       can have a name (FAILED - 19)
#     #pets
#       is initialized with a pets attribute as a hash with 3 keys (FAILED - 20)
#     #buy_fish
#       can buy a fish that is an instance of the Fish class (FAILED - 21)
#       knows about its fishes (FAILED - 22)
#     #buy_cat
#       can buy a cat that is an instance of the Cat class (FAILED - 23)
#       knows about its cats (FAILED - 24)
#       #buy_dog
#         can buy a dog that is an instance of the Dog class (FAILED - 25)
#         knows about its dogs (FAILED - 26)
#       #walk_dogs
#         walks the dogs which makes the dogs' moods happy (FAILED - 27)
#       #play_with_cats
#         plays with the cats which makes the cats moods happy (FAILED - 28)
#       #feed_fish
#         feeds the fishes which makes the fishes' moods happy (FAILED - 29)
#       #sell_pets
#         can sell all its pets, which make them nervous (FAILED - 30)
#       #list_pets
#         can list off its pets (FAILED - 31)
