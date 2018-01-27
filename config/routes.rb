Rails.application.routes.draw do
  resources :comments
  resources :meetings
  resources :action_items
  resources :agenda_items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#main'
  get '/test01/', to: 'pages#main'
end
