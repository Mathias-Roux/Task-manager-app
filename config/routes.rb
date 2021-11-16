Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create
  # Read
  # Update
  # Destroy

  get 'tasks', to: 'tasks#tasks'

  get 'tasks/:id', to: 'tasks#show', as: :task
end
