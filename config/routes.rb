Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create
  get 'new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create
  # Read
  get 'tasks', to: 'tasks#tasks'
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update
  # Destroy

end
