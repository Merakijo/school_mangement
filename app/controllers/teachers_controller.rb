class TeachersController < ApplicationController
	def index
		teachers = Teacher.all
		render json: teachers	 
		# ActiveModelSerializers::SerializableResource.new(teachers,
		#  {serializer: TeacherSerializer}).as_json

	end

	def show
		teacher = Teacher.find(params[:id])
		render json: teacher
	end
end