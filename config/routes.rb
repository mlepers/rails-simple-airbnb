Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flats#index"
  resources :flats

  get '/query=:name', to: 'flats#search', as: :search_flat

end
