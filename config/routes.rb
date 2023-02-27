Rails.application.routes.draw do
  get 'components/home'
  get 'components/index'
  get 'component/home'
  get 'component/index'
  root 'pages#index'

  resources :clientes, :proyectos, :components
end
