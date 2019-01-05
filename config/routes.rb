Rails.application.routes.draw do
  resources :applies
  resources :vacancies
  resources :role_users
  resources :roles
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end  
  get 'home/index'
  get 'users' => 'users#index', as: :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
