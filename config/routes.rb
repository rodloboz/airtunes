Rails.application.routes.draw do
  root to: 'artists#index'

  resources :artists do
    resources :records, only: %i(new create)
    resources :artist_tags, only: %i(new create)
  end

  resources :records, only: [:destroy]
end
