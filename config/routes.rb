PlantFrau::Application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Main => '/'

  # Defines the root path route ("/")
  # get 'books' => 'books#index'
  root :to => 'home#index'
end
