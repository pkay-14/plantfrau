PlantFrau::Application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Main => '/'

  get 'signout', to: 'sessions#destroy', as: 'signout'
  put 'edit', to: 'home#edit'

  resources :plants, only: [:index]
  root :to => 'home#index'
end
