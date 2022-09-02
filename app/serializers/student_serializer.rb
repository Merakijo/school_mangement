class StudentSerializer < ApplicationSerializer
  attributes :id, :first_name, :last_name, :dob, :mobile_no, :result

  has_one :standard
  has_many :section
  has_many :subjects, through: :students_subject

   

 #  		def current
	# 	{
	# 		temp: 1,
	# 		status: "rainy"
	# 	}
	# end
	
	def result
  	if self.object.status
  		"Pass"
  	else
  		"Fail"
  	end
  end
  
end
											