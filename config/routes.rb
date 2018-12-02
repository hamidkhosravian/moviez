Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :show]
      resources :seasons, only: [:index, :show] do
        resources :episodes, only: [:index, :show]
      end
    end
  end
end
