Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  resources :users, only: [:show, :index, :edit, :update, :creat]
  resources :books
  post 'edit_user_path' => 'users#index'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html