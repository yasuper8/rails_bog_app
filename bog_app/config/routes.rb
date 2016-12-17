Rails.application.routes.draw do

  root to: "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
  patch "/creatures/:id", to: "creatures#update"
end


# Prefix Verb  URI Pattern                   Controller#Action
#        root GET   /                             creatures#index
#   creatures GET   /creatures(.:format)          creatures#index
# new_creature GET   /creatures/new(.:format)      creatures#new
#             POST  /creatures(.:format)          creatures#create
#    creature GET   /creatures/:id(.:format)      creatures#show
# edit_creature GET   /creatures/:id/edit(.:format) creatures#edit
#             PATCH /creatures/:id(.:format)      creatures#update
