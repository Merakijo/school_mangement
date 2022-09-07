class StudentsController < ApplicationController

	protect_from_forgery with: :null_session
	def index
		  @students = Student.all
		# # listing_response = ActiveModel::Serializer::CollectionSerializer.new(students,
		# # serializer: ::Students::ListingSerializer)
		# # render json: listing_response
  #      render json: @students         #, each_serializer: Students::ListingSerializer
 
	end
    def new
		@student = Student.new

		
	end
		
	def create
		@student = Student.new(student_params)

		@student.password = "password"
		@student.blood_group_id  = 2
		 @student.save!
			flash[:notice] = "You have successfully signed up"

			redirect_to students_path
		
		rescue => e
			render json: {message:  e.message}
		

	end

	def show
		@student = Student.find(params[:id])
		
	end
    
  
	def mobile_info
		mobiles = Student.where.not("mobile_no = 'nil'")
		render json: mobiles
	end

	private

	def student_params
		params.require(:student).permit(:first_name, :last_name, :address, :mobile_no, :password, :password_conformation, standards_student_attributes: [ :standard_id])
	end

	def success_message
		"Student created Successfully"
	end

	def failure_message
		"Failed to create student"
	end

end
