Rails.application.routes.draw do
  
	devise_for :users
	resources:users, only: [:update, :show]
  resources:monsters
	
  authenticated do
    root to: "users#show", as: :authenticated
  end
  
	root to: 'welcome#index'
  
end
