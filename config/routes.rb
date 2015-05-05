Rails.application.routes.draw do
  
	devise_for :users, only: [:update]
	root to: 'welcome#index'
  
end
