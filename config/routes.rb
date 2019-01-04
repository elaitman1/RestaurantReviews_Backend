Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :restaurants
      resources :reviews
      resources :users
    end
  end

  # get "/restaurants", to: "restaurants#index"
  #
  # get "/steak", to: "restaurants#beef"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# header
# body
# div  id
# js file
# run fetch
# append data to html
