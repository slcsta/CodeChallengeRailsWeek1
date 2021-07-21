Rails.application.routes.draw do
  resources :supplies
  resources :categories
  get 'parties', to: 'parties#index'

  get 'parties/new', to: 'parties#new'

  post 'parties', to: 'parties#create'

  get 'parties/:id/edit', to: 'parties#edit'

  patch 'parties/:id', to: 'parties#update'

  get 'parties/:id', to: 'parties#show', as: 'party'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
