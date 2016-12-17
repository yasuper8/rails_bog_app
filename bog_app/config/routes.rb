Rails.application.routes.draw do

  root to: "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
end


# Prefix Verb URI Pattern          Controller#Action
#     root GET  /                    creatures#index
# creatures GET  /creatures(.:format) creatrues#index
