class CarWash
  attr_reader :opening_year,
              :location_city_and_state,
              # :location_state,
              :number_of_employees

  def initialize(location_city_and_state, opening_year)
    @opening_year = opening_year
    @location_city_and_state = location_city_and_state
    # @location_state = "ST"
    @number_of_employees = 0
  end

  def hire_employee
    @number_of_employees += 1
  end

  def business_age
    
  end

end
