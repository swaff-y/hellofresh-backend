Rails.application.routes.draw do

  get 'weeks/index/:page',to: 'weeks#index'
  get 'weeks/create'
  get 'weeks/show/:id', to: 'weeks#show'
  get 'weeks/destroy/:id', to: 'weeks#destroy'

  get 'recipes/index/:page',to: 'recipes#index'
  post 'recipes/create'
  get 'recipes/show/:id', to: 'recipes#show'
  delete 'recipes/destroy/:id', to: 'recipes#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
