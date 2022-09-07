class LoginsController <  ApplicationController

	def new
		
	end

	def create
		student = Student.find_by(mobile_no: params[:logins][:mobile_no])
		if student && student.authenticate(params[:logins][:password]) 
			session[:student_id] = student.id
			flash[:notice] = "Successfully logged in"
			redirect_to student
		else
			flash.now[:notice] = "Something is wrong with your login information"
			render "new"
		end

	end

	def destroy
		session[:student_id] = nil
		flash[:notice] = "You have Successfully logged out"
		redirect_to root_path
	end
end