Rails.application.routes.draw do
  get 'products', to: 'products#index'
  resources :products, only:[:create, :destroy]
  get 'products/:id', to: 'products#show', as: 'detail'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
