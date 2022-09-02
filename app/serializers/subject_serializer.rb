class SubjectSerializer < ApplicationSerializer
  attributes :id, :name, :departments
  has_many :students
  has_many :teachers
  
  def departments 
  	self.object.department
  end

 

end
