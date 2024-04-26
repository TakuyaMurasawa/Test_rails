Rails.application.routes.draw do
  get 'todolists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  # Defines the root path route ("/")
  # root "articles#index"
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
end
