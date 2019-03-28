Myapp::Application.routes.draw do
  resources :activities
  resources :customers
  resources :document_registers
  resources :instrument_registrations
  resources :testings
  devise_for :users, :controllers => {registrations: "registrations"}
  get "home/index"
  get "home/minor"
  root to: 'home#index'
end
