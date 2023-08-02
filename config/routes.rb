PlantFrau::Application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Main => '/'

  # Defines the root path route ("/")
  # get 'books' => 'books#index'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#index'
end
