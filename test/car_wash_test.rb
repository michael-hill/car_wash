gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car_wash'
require 'pry'

class CarWashTest < Minitest::Test

  def test_it_exists
    car_wash = CarWash.new("City, ST", 2008)
    assert_instance_of CarWash, car_wash
    # OR
    assert car_wash
  end

  def test_it_has_an_opening_year
    car_wash = CarWash.new("City, ST", 2008)
    assert_equal 2008, car_wash.opening_year
  end

  def test_it_has_a_location_city_and_state
    car_wash = CarWash.new("City, ST", 2005)
    assert_equal "City, ST", car_wash.location_city_and_state
  end

  # def test_it_has_a_location_state
  #   car_wash = CarWash.new("City, ST", 2008)
  #   assert_equal "ST", car_wash.location_state
  # end

  def test_number_of_employees
    car_wash = CarWash.new("City, ST", 2005)
    assert_equal 0, car_wash.number_of_employees
  end

  def test_it_can_hire_an_employee
    car_wash = CarWash.new("Denver, CO", 2005)
    assert_equal 1, car_wash.hire_employee
  end

  def test_it_provides_employees_age
    car_wash = CarWash.new("Superior, CO", 2010)
    assert_equal 4, car_wash.business_age
  end

end
