Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'lists', 'lists#index'

  # get 'lists/new', 'lists#new'
  # post 'lists', 'lists#create'

  # get 'lists/:id', 'lists#show'

  # get 'lists/:id/edit', 'lists#edit'
  # patch 'lists/:id', 'lists#update'

  # delete 'lists/:id', 'lists#destroy'

  root 'lists#index'
  resources :lists, except: :index do
    resources :bookmarks, only: %i[new create]
  end

  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'delete_bookmark'
end
