class StudentsController < ApplicationController

	protect_from_forgery with: :null_session
	def index
		 @students = Student.all
		# listing_response = ActiveModel::Serializer::CollectionSerializer.new(students,
		# serializer: ::Students::ListingSerializer)
		# render json: listing_response
       render json: @students         #, each_serializer: Students::ListingSerializer
 
	end

	def show
		student = Student.find(params[:id])
		#stud = Student.where("fee_status = 'paid' ")
		#render json: stud
		render json: student
	end

	def create
		student = Student.create!(student_params)
		render json: {message: success_message}

	rescue => e
		render json: {message: e.message}
	end

	def mobile_info
		mobiles = Student.where.not("mobile_no = 'nil'")
		render json: mobiles
	end

	private

	def student_params
		params.require(:student).permit(:first_name, :last_name, :dob, :standard, :mobile_no)
	end

	def success_message
		"Student created Successfully"
	end

	def failure_message
		"Failed to create student"
	end

end
