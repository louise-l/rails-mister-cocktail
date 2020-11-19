Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails
end


            #        Prefix Verb   URI Pattern                          Controller#Action
            #     cocktails GET    /cocktails(.:format)                  cocktails#index
            #               POST   /cocktails(.:format)                  cocktails#create
            #  new_cocktail GET    /cocktails/new(.:format)              cocktails#new
            # edit_cocktail GET    /cocktails/:id/edit(.:format)         cocktails#edit
            #      cocktail GET    /cocktails/:id(.:format)              cocktails#show
            #               PATCH  /cocktails/:id(.:format)              cocktails#update
            #               PUT    /cocktails/:id(.:format)              cocktails#update
            #               DELETE /cocktails/:id(.:format)              cocktails#destroy
