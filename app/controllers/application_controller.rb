class ApplicationController < ActionController::Base

	 # before_action :require_user
	
	helper_method :current_user, :logged_in?
	
	def current_user  
		# details of the user who is logges in
		if session[:student_id]
			Student.find(session[:student_id])
		# else session[:teacher_id]
		# 	Teacher.find(session[:teacher_id])
		end
		
			# @current_user ||= Student.find(session[:student_id] if session[:student_id]
   		
   			# @current_user ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]
   	
    end	
    #Memoization ||= is used:  i.e it wil only hit the database if the current_user is empty 

	def logged_in?
		!!current_user
		# !! i.e make it boolean for true/false value
	end

	def require_user
		if !logged_in?
			flash[:notice] = "Login karle pehle"
			redirect_to login_path
		end
	end

end
 