class Inventario < ActiveRecord::Base
	validates :numserie, presence: true
end
