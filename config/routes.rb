Rails.application.routes.draw do
  
  root 'demo#index'

  resources :subjects do
  	member do
  		get :delete
  	end
  end

  #get 'demo/index'
  get 'demo/home'
  get 'demo/home1'
  get 'demo/youtube'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
