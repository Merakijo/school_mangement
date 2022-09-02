class DepartmentSerializer < ApplicationSerializer
	attributes :id, :department

	has_many :teachers
end