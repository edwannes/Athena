Rails.application.routes.draw do
  devise_for :usuarios
		resources :tareas
	get 'saludo/index'
	root 'saludo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end