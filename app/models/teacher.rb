class Teacher < ApplicationRecord
	
	
	has_many :subjects_teacher
	has_many :subjects, through: :subjects_teacher

	has_one :departments_teacher
	has_one :teachers, through: :departments_teacher
end