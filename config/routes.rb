Rails.application.routes.draw do
  #root route
  root 'demo#index'
  get 'demo/index'
  # get 'demo/index' #=> simple route

  # get ':controller(/:action(/:id))' #=> Default route - may go away in future rails

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
