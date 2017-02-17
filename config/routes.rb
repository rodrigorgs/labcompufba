#  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root to: redirect('/posts')
#end
Rails.application.routes.draw do

  devise_for :users
  resources :application
  root 'application#index'
  root 'laboratorios#index'
  resources :equipamentos
  root 'equipamentos#index'
  resources :institutos
  root 'institutos#index'

  get '/pesquisador', to: 'pesquisador#index'
  get '/pesquisador', to: 'pesquisador#index'
  get '/pesquisador/show', to: 'pesquisador#show'
  get '/pesquisador/edit', to: 'pesquisador#edit'
end