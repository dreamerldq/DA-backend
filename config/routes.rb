Rails.application.routes.draw do
  get 'users/:type', to: 'users#index'
  get 'users/detail/:id', to: 'users#show'
  resources :users, :news, :studios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
