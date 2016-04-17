require 'test_helper'

class InventarioTest < ActiveSupport::TestCase
  test 'Item without numserie must be invalid' do
inventario = Inventario.new numserie:nil
assert_not inventario.valid?
end
