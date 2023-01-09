Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  get 'bookings/show'
  get 'bookings/update'
  get 'bookings/cancel'
  # get 'userhomepages/show'
  # get 'userhomepages/book'

  get 'welcome/adminhome'
  get 'userhomepages/showsearch'
 
  post 'userhomepages/search'
  devise_for :users

  # get 'users_home/index'
  # get 'confirmed_routes/new'
  # get 'confirmed_routes/show'
  # get 'confirmed_routes/update'
  # get 'confirmed_routes/destroy'
  # get 'routes/new'
  # get 'routes/create'
  # get 'routes/show'
  # get 'routes/destroy'
  # get 'buses/new'
  # get 'buses/create'
   get 'buses/show'
  # get 'buses/destroy'
  # get 'welcome/index'
  # get 'companies/new'
  # get 'companies/create'
  # get 'companies/show'
  # get 'companies/update'
  # get 'companies/destroy'
  resources :bookings
  resources :userhomepages
  resources :confirmed_routes
  resources :routes
  resources :buses
  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "userhomepages#showsearch"
end
