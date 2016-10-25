class CarWash
  attr_reader :opening_year,
              :location_city,
              :location_state,
              :number_of_employees

  def initialize(location, opening_year)
    @opening_year = opening_year
    @location_city = extract_city(location)
    @location_state = extract_state(location)
    @number_of_employees = 0
  end

  def extract_city(location)
    location.split(",")[0]
  end

  def extract_state(location)
    location.split(",")[1]
  end

  def hire_employee(num)
    @number_of_employees += num
  end

  def business_age
    @business_age = Time.now.year - opening_year
    return "I am #{@business_age} years old."
  end

end
