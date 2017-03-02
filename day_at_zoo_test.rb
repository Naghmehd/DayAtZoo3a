require 'minitest/autorun'
require './day_at_zoo'

class TestDayAtZoo < Minitest::Test

  def setup
    @zoo   = Zoo.new
    @tiger = Animal.new( naam: 'tiger' )
    @zoo.carnivore_cage << @tiger if @tiger.is_carnivore?
    @cow   = Animal.new( carn: false, herb: true, naam: 'cow' )
    @zoo.herbivore_cage << @cow if @cow.is_herbivore?

  end

  def test_carnivore_cage
    assert_equal 1, @zoo.carnivore_cage.length
  end

  def test_herbivore_cage
    assert_equal 1, @zoo.herbivore_cage.length
  end

end
