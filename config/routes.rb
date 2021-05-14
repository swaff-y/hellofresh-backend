Rails.application.routes.draw do

  get 'recipes/index'
  post 'recipes/create'
  get 'recipes/show/:id', to: 'recipes#show'
  delete 'recipes/destroy/:id', to: 'recipes#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
