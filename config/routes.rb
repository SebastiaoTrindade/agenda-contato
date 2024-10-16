Rails.application.routes.draw do
  root 'home#index'
  resources :telefones
  resources :enderecos
  resources :contatos
  resources :tipos
  
end
