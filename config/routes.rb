Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ideas do 
    resources :reviews, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end
  
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
 

  get '/', {to: 'ideas#home', as: 'home_page'}
end
