Rails.application.routes.draw do
  resources :clientes
  resources :calculos
  get 'components/home'
  get 'components/index'
  get 'component/home'
  get 'component/index'
  root 'pages#index'

  resources :clientes, :proyectos, :chagelogs, :calculos
end
