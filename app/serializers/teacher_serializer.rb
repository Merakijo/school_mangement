class TeacherSerializer < ApplicationSerializer
	attributes :id, :first_name, :last_name

	has_one :department
	has_many :subjects
	

	
	
	
end
