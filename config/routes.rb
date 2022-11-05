Rails.application.routes.draw do
  
  
  devise_for :users
  get 'homes/top'
  get "home/about" => "homes#about"
  

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end 
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

end
