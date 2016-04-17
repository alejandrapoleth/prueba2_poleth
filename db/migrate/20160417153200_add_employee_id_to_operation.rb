class AddEmployeeIdToOperation < ActiveRecord::Migration
  def change
    add_column :operations, :employee_id, :integer
    add_index :operations, :employee_id
  end
end
