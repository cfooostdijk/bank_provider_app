Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/custom_sign_out', to: 'devise/sessions#destroy', as: :custom_destroy_user_session
  end

	resources :banks
  resources :dashboards
  resources :suppliers do
    get '/page/:page', action: :index, on: :collection
  end
end
