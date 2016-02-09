Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users_admin, :controller => 'users'

  # Circumvent Devise for creating new users
  #post 'new_user' => 'users#new', as: :new_user_path
end
