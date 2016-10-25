gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car_wash'
require 'pry'

class CarWashTest < Minitest::Test

  def test_it_exists
    car_wash = CarWash.new("Ada, OK", 2008)
    assert_instance_of CarWash, car_wash
  end

  def test_it_has_an_opening_year
    car_wash = CarWash.new("Denver, CO", 2008)
    assert_equal 2008, car_wash.opening_year
  end

  def test_it_can_extract_city
    car_wash = CarWash.new("Loveland, CO", 2008)
    assert_equal "Loveland", car_wash.extract_city("Loveland, CO")
  end

  def test_it_has_a_location_city
    car_wash = CarWash.new("Loveland, CO", 2008)
    assert_equal "Loveland", car_wash.location_city
  end

  def test_it_can_extract_state
    car_wash = CarWash.new("Frisco,TX", 2008)
    assert_equal "TX", car_wash.extract_state("Frisco,TX")
  end

  def test_it_has_a_location_state
    car_wash = CarWash.new("Frisco,TX", 2008)
    assert_equal "TX", car_wash.location_state
  end

  def test_number_of_employees
    car_wash = CarWash.new("Parker, CO", 2008)
    assert_equal 0, car_wash.number_of_employees
  end

  def test_it_can_hire_an_employee
    car_wash = CarWash.new("Englewood, CO", 2008)
    assert_equal 1, car_wash.hire_employee(1)
  end

  def test_it_can_hire_multiple_employees
    car_wash = CarWash.new("Superior, CO", 2008)
    assert_equal 4, car_wash.hire_employee(4)
  end

  def test_number_of_years_open
    car_wash = CarWash.new("Littleton, CO", 2008)
    assert_equal "I am 8 years old.", car_wash.business_age
  end

end
