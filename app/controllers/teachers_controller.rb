class TeachersController < ApplicationController
	def index
		@teachers = Teacher.all
		# render json: teachers	 
		# ActiveModelSerializers::SerializableResource.new(teachers,
		#  {serializer: TeacherSerializer}).as_json

	end

	def new
		@teacher = Teacher.new
		
	end

	def create
		@teacher = Teacher.new(teacher_params)
		if @teacher.save
			flash[:notice] = "You have successfully signed up"
			redirect_to teachers_path
		else
			render 'new'
		end
	end

	def show
		@teacher = Teacher.find(params[:id])
		render json: @teacher
	end

	private

	def teacher_params
		params.require(:teacher).permit(:first_name, :last_name, :department, :subject)
	end
end