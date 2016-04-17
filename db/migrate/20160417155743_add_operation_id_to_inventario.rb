class AddOperationIdToInventario < ActiveRecord::Migration
  def change
    add_column :inventarios, :operation_id, :integer
    add_index :inventarios, :operation_id
  end
end
