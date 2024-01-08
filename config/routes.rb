Rails.application.routes.draw do
  devise_for :users
	resources :banks
  resources :dashboards
  resources :suppliers do
    get '/page/:page', action: :index, on: :collection
  end
end
