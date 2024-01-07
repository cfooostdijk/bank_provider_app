Rails.application.routes.draw do
	resources :banks
  resources :dashboards
  resources :suppliers do
    get '/page/:page', action: :index, on: :collection
  end
end
