Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :edit, :update,:create]
  
end
