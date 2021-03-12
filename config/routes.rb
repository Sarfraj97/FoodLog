Rails.application.routes.draw do
  
  root "home#index"
  resources :homes 
  get '/entries' => 'entries#index', as: :user_root # creates user_root_path
    namespace :user do
      root 'entries#index' # creates user_root_path
    end

  resources :entries
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
