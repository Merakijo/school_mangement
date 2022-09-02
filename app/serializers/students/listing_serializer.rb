module Students
	class ListingSerializer < BaseSerializer
		attributes :id, :first_name
		attribute :teachers

		def teachers
			object.teachers.map do |teacher|
				teacher.as_json(
					
				)
			end

		end
	end
end