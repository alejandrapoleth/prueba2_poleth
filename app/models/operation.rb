class Operation < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :employee
	has_one :inventario
end
