Rails.application.routes.draw do
  get '/apidoc' => redirect('/swagger/dist/index.html?url=/api_docs/open_api/blog_sample_openapi.json')

  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :show]
      resources :seasons, only: [:index, :show] do
        resources :episodes, only: [:index, :show]
      end

      # different format of routes
      get  "/users/:user_id/purchases",     to: "purchases#index"
      get  "/users/:user_id/purchases/:id", to: "purchases#show"
      post "/users/:user_id/purchases",     to: "purchases#create"
    end
  end
end
