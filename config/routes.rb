Rails.application.routes.draw do
  # root 'pages#index'

  resources :clientes, :proyectos
end
