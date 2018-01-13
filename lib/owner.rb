require "pry"

class Owner

attr_accessor :name, :pets
attr_reader :species

@@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats =>
[]}
  end

# Class Methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

#Instance Methods

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] = fish
    @pets[:fishes] = "mike"
  end
end
