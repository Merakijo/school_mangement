class Subject < ApplicationRecord

	belongs_to :department, foreign_key: 'department',
	 primary_key: 'name'
	has_many :students_subject
	has_many :students, through: :students_subject

	has_many :subjects_teacher
	has_many :teachers, through: :subjects_teacher
	
end