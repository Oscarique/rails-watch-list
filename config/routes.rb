Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index create new show destroy] do
    resources :bookmarks, only: %i[index show create new destroy]
  end
  # Defines the root path route ("/")
  root "movies#index"
end
