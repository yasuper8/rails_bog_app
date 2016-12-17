Rails.application.routes.draw do

  root "creatures#index"

  get "/creatures", to: "creatrues#index", as: "creatures"

end


# Prefix Verb URI Pattern          Controller#Action
#     root GET  /                    creatures#index
# creatures GET  /creatures(.:format) creatrues#index
