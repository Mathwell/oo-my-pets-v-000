class Owner
  # code goes here
  attr_accessor :name, :species, :pets
  @@all=[]


  def initialize(species)
    @@all<<self
    @species=species
    @pets={:fishes=>[], :dogs=>[], :cats=>[]}
  end


  def self.reset_all
    @@all=[]
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end
  def raise_exception
    raise 'An error has occured'
  end


 def self.species(species="")
   self.new(species)
   #@species=species
 end


  def species=(species)
    raise_exception
  end

 def say_species
   "I am a #{@species}."
 end

 def buy_fish(name)
   fish=Fish.new(name)
   @pets[:fishes]<<fish
 end

 def buy_cat(name)
   cat=Cat.new(name)
   @pets[:cats]<<cat
 end

 def buy_dog(name)
   dog=Dog.new(name)
   @pets[:dogs]<<dog
 end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood="happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood="happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood="happy"
  end
end

def sell_pets
  @pets.each do |key, value|
    value.each do |pet|
      pet.mood="nervous"
    end
  end
  @pets={:fishes=>[], :dogs=>[], :cats=>[]}
end

def list_pets
  "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
end

end
