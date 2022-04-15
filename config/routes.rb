Rails.application.routes.draw do
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/non_profits/new"
  post "/non_profits/create"

  get "/developers/new"
  post "/developers/create"

  get "user_choice", to: "welcome#show"

  get "/log_in", to: "sessions#new"
  post "/log_in", to: "sessions#create"
  delete "/log_out", to: "sessions#destroy"
end
