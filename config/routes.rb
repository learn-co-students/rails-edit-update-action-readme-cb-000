Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  # why arent we just throwing an edit option up above ??
  # mayb they said it beforehand.
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # why not patch?
  put 'posts/:id', to: 'posts#update'


end
