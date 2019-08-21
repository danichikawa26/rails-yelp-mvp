Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[new create index]
  end

  resources :reviews, except: %i[new create index]
end
