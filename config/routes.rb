Rails.application.routes.draw do
  
 devise_for :users, controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations',
  confirmations: 'users/confirmations'
}

  root to: 'home#index'
  # resources :settings, only: [:index] do
  #   collection do
  #     get :password
  #     patch :update_user
  #     patch :update_password
  #   end
  # end

  # resources :addresses

  namespace :admin do
    root 'home#index', as: :authenticated_root
  end

end
