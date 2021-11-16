Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create
  get 'new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create
  # Read
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update', as: :update
  # Destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
