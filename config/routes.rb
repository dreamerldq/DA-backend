Rails.application.routes.draw do
  get 'users/:type', to: 'users#index'
  get 'users/detail/:id', to: 'users#show'
  get 'professions/detail/:id', to: 'professions#show'
  post 'login', to: 'sessions#create'
  resources :users, :news, :studios, :professions,:projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
