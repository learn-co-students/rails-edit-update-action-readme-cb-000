Rails.application.routes.draw do
  resources :articles, only: %i[index show new create edit update]
  # hmm the above syntax is different from what is in the lesson. Why not tell us about it?


  # get 'articles/:id/edit', to: 'articles#edit', as :edit_article

  # patch 'articles/:id', to: 'articles#update'

end
