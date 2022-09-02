class Student < ApplicationRecord
	enum fee_status: [ :paid, :unpaid, :pending]
	
	has_many :students_subject
	has_many :subjects, through: :students_subject

	validates_presence_of :mobile_no
	# validates_uniqueness_of :mobile_no
	
	has_one :standards_student
	has_one :standard, through: :standards_student

	has_one :sections_student
	has_one :section, through: :sections_student

	

	
	
end