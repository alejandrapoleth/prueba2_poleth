class Operation < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :employee
end
