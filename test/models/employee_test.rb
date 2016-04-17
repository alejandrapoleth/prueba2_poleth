require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  	test 'Employee without name must be invalid' do
	employee = Employee.new name:nil
	assert_not employee.valid?
end
 test "Employee has operations" do
    skip "not yet"
    #assert_includes @list.tasks, tasks(:one)
    end
end
