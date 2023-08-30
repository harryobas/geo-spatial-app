Rails.application.routes.draw do
  namespace :api do
    post 'places', to: 'places#show_by_coordinates'
  end 
  
end


