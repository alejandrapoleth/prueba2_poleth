class Employee < ActiveRecord::Base
	validates :name, presence: true
	has_many :operations, dependent: :destroy
end
