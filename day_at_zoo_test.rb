require 'minitest/autorun'
require './day_at_zoo'

class TestDayAtZoo < Minitest::Test

  def setup
    @zoo   = Zoo.new
    @tiger = Animal.new( naam: 'tiger' )
    @lion  = Animal.new( naam: 'lion' )
    @wolf  = Animal.new(naam: 'wolf')
    @chicken = Animal.new(carn: false, herb: true, naam: 'chicken')
    @cow   = Animal.new( carn: false, herb: true, naam: 'cow' )
    @zoo.carnivore_cage << @tiger if @tiger.is_carnivore?
    @zoo.carnivore_cage << @lion if @lion.is_carnivore?
    @zoo.carnivore_cage << @wolf if @wolf.is_carnivore?
    @zoo.herbivore_cage << @chicken if @chicken.is_herbivore?
    @zoo.herbivore_cage << @cow if @cow.is_herbivore?

  end

  def test_carnivore_cage
    assert_equal 3, @zoo.carnivore_cage.length
    assert_equal "tiger", @zoo.carnivore_cage[0].name
    assert_equal "lion", @zoo.carnivore_cage[1].name
    assert_equal "wolf", @zoo.carnivore_cage[2].name
  end

  def test_herbivore_cage
    assert_equal 2, @zoo.herbivore_cage.length
    assert_equal "chicken", @zoo.herbivore_cage[0].name
    assert_equal "cow", @zoo.herbivore_cage[1].name
  end

  def test_is_carnivore
    assert_equal true, @tiger.is_carnivore?
  end

  def test_is_herbivore
    assert_equal true, @cow.is_herbivore?
  end
end
