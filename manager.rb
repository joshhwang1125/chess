require_relative 'exercises.rb'

class Manager < Employee
  def bonus(multiplier)
    salary_sum = 0
    self.subordinate.each do |employee|
      salary_sum += employee.salary
    end
    p salary_sum
    salary_sum * multiplier
  end
end
