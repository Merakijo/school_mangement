class StandardsStudent < ApplicationRecord
	belongs_to :standard
	belongs_to :student
end
