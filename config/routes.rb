Rails.application.routes.draw do
  
  resources :manages
  root "home#index"
  
  resource :homes 
  
  resources :entries do
  	collection do
       get :view_all
  	end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
