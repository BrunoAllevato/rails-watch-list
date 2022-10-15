Rails.application.routes.draw do
  # root "articles#index"
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end
end
