class Inventario < ActiveRecord::Base
	validates :numserie, presence: true
	belongs_to :operation
end
