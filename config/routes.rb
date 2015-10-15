Rails.application.routes.draw do
  root to: "products#index"
  resources :products
  match '/contacts', to: 'contacts#new', via: 'get'
	resources "contacts", only: [:new, :create]
end
