class Owner
  attr_accessor :name, :pets
    attr_reader :species

    @@owners = []

    def self.all
       @@owners
     end

     def self.reset_all
       @@owners.clear
     end

     def self.count
       @@owners.length
     end

    def initialize(species)
      @species = species
      @pets = pets
      @@owners << self
      @pets = {:fishes => [], :cats => [], :dogs => []}

    end

    def say_species
      "I am a #{@species}."
    end

    def buy_fish(fish_name)
        @pets[:fishes] << Fish.new(fish_name)
      end

      def buy_cat(cat_name)
        @pets[:cats] << Cat.new(cat_name)
      end

      def buy_dog(dog_name)
        @pets[:dogs] << Dog.new(dog_name)
      end

      def walk_dogs
        @pets[:dogs].each do |dog|
          dog.mood = "happy"
        end
      end

      def play_with_cats
        @pets[:cats].each do |cat|
          cat.mood = "happy"
        end
      end

      def feed_fish
        @pets[:fishes].each do |fish|
          fish.mood = "happy"
        end
      end

      def sell_pets
      		pets.each do |species, animals|
           # @@owners = {:fishes => [], :cats => [], :dogs => []}
           animals.each do |animal|
      		 	animal.mood = "nervous"
      		 end
      		 animals.clear
      		end
      	end

       	def list_pets
      	"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
      	end













































































end
