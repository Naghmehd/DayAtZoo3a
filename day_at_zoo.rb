class Zoo
  attr_accessor :carnivore_cage, :herbivore_cage, :ominvore_cage

  def initialize
    @carnivore_cage = []
    @herbivore_cage = []
    @ominvore_cage  = []
  end

  def add_to_correc_cage(animal)
    if animal.is_carnivore?
      carnivore_cage << animal
    elsif animal.is_herbivore?
      herbivore_cage << animal
    else
      ominvore_cage << animal
    end
  end
end

class Animal
  attr_reader :carnivore, :herbivore, :name, :omnivore

  def initialize ( carn: true, herb: false, naam: "")
    @carnivore = carn
    @herbivore = herb
    @name      = naam
    if carn == true && herb == true
      @omnivore = true
    else
      @omnivore = false
    end
  end

  def is_carnivore?
    carnivore == true && herbivore == false
  end

  def is_herbivore?
    herbivore == true && carnivore == false
  end

  def is_omnivore?
    omnivore == true
  end
end

zoo     = Zoo.new
tiger   = Animal.new( naam: 'tiger' )
lion    = Animal.new( naam: 'lion' )
wolf    = Animal.new(naam: 'wolf')
chicken = Animal.new(carn: false, herb: true, naam: 'chicken')
cow = Animal.new(carn: false, herb: true, naam: 'cow')

zoo.carnivore_cage << tiger if tiger.is_carnivore?
zoo.carnivore_cage << lion if lion.is_carnivore?
zoo.carnivore_cage << wolf if wolf.is_carnivore?
zoo.herbivore_cage << chicken if chicken.is_herbivore?
zoo.herbivore_cage << cow if cow.is_herbivore?

puts zoo.carnivore_cage.length
puts zoo.herbivore_cage.length
