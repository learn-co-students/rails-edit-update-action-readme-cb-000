Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # more explicit options for edit and update:
  # get 'posts/:id/edit', to: 'post#edit', as: edit_post
  # patch 'posts/:id', to: 'post#update'
end
