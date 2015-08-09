Rails.application.routes.draw do
  root 'welcome#home'
  resources :services_request, only: [:new, :create]
end
