Rails.application.routes.draw do
  root 'welcome#home'
  resources :services_requests, only: [:new, :create]
end
