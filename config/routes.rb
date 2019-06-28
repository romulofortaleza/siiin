Myapp::Application.routes.draw do
  resources :activities
  
  controller :customers do
    get 'clientes', to: 'customers#index', as: 'clientes'
    get '/clientes/novo_cliente', to: 'customers#new', as: 'novo_cliente'
  end

  resources :customers

  resources :document_registers
  resources :instrument_registrations
  resources :testings
  devise_for :users, :controllers => {registrations: "registrations"}
  get "home/index"
  get "home/minor"
  root to: 'home#index'
end
