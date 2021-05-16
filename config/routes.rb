Rails.application.routes.draw do

  get 'weeks/index/:page',to: 'weeks#index'
  get 'weeks/index/all',to: 'weeks#index_all'
  post 'weeks/create'
  get 'weeks/show/:id', to: 'weeks#show'
  delete 'weeks/destroy/:id', to: 'weeks#destroy'
  get 'week/last', to: 'weeks#last'

  get 'recipes/index/:page',to: 'recipes#index'
  post 'recipes/create'
  get 'recipes/show/:id', to: 'recipes#show'
  delete 'recipes/destroy/:id', to: 'recipes#destroy'
  get 'recipes/week/:week_id', to: 'recipes#get_week'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
