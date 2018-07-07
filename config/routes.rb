Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/buttons" => "buttons#index"
    post "/buttons" => "buttons#create"
    get "/buttons/:id" => "buttons#show"
    patch "/buttons/:id" => "buttons#update"
    delete "/buttons/:id" => "buttons#destroy"
  end
end
