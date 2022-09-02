class Department < ApplicationRecord
	has_many :subjects, primary_key: 'name', 
	foreign_key: 'department' 

	belongs_to :hod, class_name: 'Teacher'

	has_many :departments_teacher
	has_many :teachers, through: :departments_teacher
end