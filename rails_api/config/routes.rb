Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :coffees
    end
  end
  # get '/coffees/index', to: '/coffees#index'
end
