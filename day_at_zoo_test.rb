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
    @baboon= Animal.new( carn: true, herb: true, naam: 'baboon' )

    @zoo.add_to_correc_cage(@tiger)
    @zoo.add_to_correc_cage(@lion)
    @zoo.add_to_correc_cage(@wolf)
    @zoo.add_to_correc_cage(@chicken)
    @zoo.add_to_correc_cage(@cow)
    @zoo.add_to_correc_cage(@baboon)
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

  def test_ominvore_cage
    assert_equal 1, @zoo.ominvore_cage.length
    assert_equal "baboon", @zoo.ominvore_cage[0].name
  end

  def test_is_carnivore
    assert_equal true, @tiger.is_carnivore?
  end

  def test_is_herbivore
    assert_equal true, @cow.is_herbivore?
  end

  def test_is_omnivore
    assert_equal true, @baboon.is_omnivore?
  end

end
