Rails.application.routes.draw do

  resources :users

  root 'static_pages#index'

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'

  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

end
