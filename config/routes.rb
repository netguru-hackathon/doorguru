Rails.application.routes.draw do

  mount API => '/'
  mount GrapeSwaggerRails::Engine => '/doc'

  resources :doors

  get 'doors/:id/open', to: 'doors#open', as: 'open_door'
  get 'doors/:id/close', to: 'doors#close', as: 'close_door'
end
