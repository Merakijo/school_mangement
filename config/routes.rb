Rails.application.routes.draw do
		get 'students', to: 'students#index'
		get 'students/:id', to:'students#show'
		get 'mobiles', to: 'students#mobile_info'
		post 'students', to: 'students#create'
		put 'students/:id', to: 'students#update'
		resources :sections	
		resources :subjects
		resources :teachers
		resources :standards
		resources :departments
	
end
