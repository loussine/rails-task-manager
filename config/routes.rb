Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # CREATE
  # afficher le formulaire Task
  get 'tasks/new', to: 'tasks#new', as: 'new'
  # http://127.0.0.1:3000/tasks/new

  # post = générer l'envoi du formulaire
  post 'tasks', to: "tasks#create"

  # LISTER / INDEX
  get 'tasks', to: 'tasks#index'

  # FOCUS SUR UNE TASK
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE UNE TASK
  # afficher le formulaire de la Task à éditer
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  # edit GET  /tasks/:id/edit(.:format)              tasks#edit
  # patch = insérer les modifications / update
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
