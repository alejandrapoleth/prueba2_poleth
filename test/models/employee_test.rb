require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  	test 'Employee without name must be invalid' do
	employee = Employee.new name:nil
	assert_not employee.valid?
end
end
