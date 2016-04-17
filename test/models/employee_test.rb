require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  	test 'Employee without name must be invalid' do
	employee = Employee.new name:nil
	assert_not employee.valid?
end
 test "employee has operations" do
 	skip "not yet"
    #assert_includes @employee.operations, operations(:one)
    end
    test 'deleting operations on cascade' do
@employee.destroy
assert_empty Operation.where(employee_id: @employee.id)
end
end
