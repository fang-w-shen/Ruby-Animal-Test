require 'minitest/autorun'
require_relative 'animal.rb'

class TestAnimal < Minitest::Test

  def setup
    @animal = Animal.new("Cody","Dog")
    @animal.legs = 4
    @dog = Dog.new("Cody")
    @dog.legs = 4
  end

  def test_success
    puts "Successful Tests"
    p assert_equal "Cody", @animal.name
    p assert_equal "Cody", @dog.name
    p assert_equal "Dog", @animal.species
    p assert_equal "Dog", @dog.species
    p assert_equal 0.4, @animal.walk
    p assert_equal 0.8, @dog.walk
    p assert_equal true, @animal.instance_of?(Animal)
    p assert_equal true, @dog.instance_of?(Dog)
    p assert_equal false, Dog.instance_of?(Animal)

    puts "Sucess!"
  end

  def test_fail
    puts "Failed Tests"
    # p assert_equal "CodY", @animal.name
    # p assert_equal "CodY", @dog.name
    # p assert_equal 0, @dog.walk
    puts "Failed!"
  end

  def teardown
  end

end