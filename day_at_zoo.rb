class Zoo
  attr_accessor :carnivore_cage, :herbivore_cage

  def initialize
    @carnivore_cage = []
    @herbivore_cage = []
  end
end

class Animal
  attr_reader :carnivore, :herbivore, :name

  def initialize ( carn: true, herb: false, naam: "" )
    @carnivore = carn
    @herbivore = herb
    @name      = naam
  end

  def is_carnivore?
    carnivore
  end

  def is_herbivore?
    herbivore
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
