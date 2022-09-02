class Section < ApplicationRecord
	has_many :sections_student
	has_many :students, through: :sections_student
end