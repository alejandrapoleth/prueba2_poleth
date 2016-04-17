require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  	test 'Operation without title must be invalid' do
	operation = Operation.new title:nil
	assert_not operation.valid?
	end

	test "Operation has Employee" do
	skip "not yet"
    assert_not_nil operation(:one).employee
    end

    test 'deleting items on cascade' do
	@operation.destroy
	assert_empty Inventario.where(operation_id: @operation.id)
	end

end