class StandardSerializer < ApplicationSerializer
	attributes :id, :standard

	has_many :students
	
end