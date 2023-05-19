Rails.application.routes.draw do

  #root route
  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'
  # get 'demo/index' #=> simple route

  # get ':controller(/:action(/:id))' #=> Default route - may go away in future rails

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
