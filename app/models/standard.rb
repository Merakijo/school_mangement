class Standard < ApplicationRecord
	has_many :standards_student
	has_many :students, through: :standards_student


end