Rails.application.routes.draw do
	resources :banks
  resources :suppliers do
    get '/page/:page', action: :index, on: :collection
  end
end
