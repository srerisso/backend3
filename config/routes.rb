Rails.application.routes.draw do
  # resources :proyectos
  # resources :clientes
  # resources :calculos
  get 'components/home'
  get 'components/index'
  root 'pages#index'

  resources :clientes, :proyectos, :chagelogs, :calculos
end
