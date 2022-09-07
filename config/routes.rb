Rails.application.routes.draw do

	root 'base#index'
		resources :students
		# get 'students', to: 'students#index'
		# get 'students/new', to: 'students#new'
		# get 'students/:id', to:'students#show'
		# post 'students', to: 'students#create'
		# put 'students/:id', to: 'students#update'
		
		get 'mobiles', to: 'students#mobile_info'
		

		get 'login', to: 'logins#new'
	    post 'login', to: 'logins#create'
	    delete 'logout', to: 'logins#destroy'
		resources :sections	
		resources :subjects
		resources :teachers
		resources :standards
		resources :departments
	
end
