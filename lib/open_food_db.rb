
module OpenFoodDB
  class API < Grape::API
    default_format :json
    format :json
  
    resources :food_stuffs do
    
      get '/show/:id' do
        FoodStuff.find_by_id(params[:id]).to_json
      end
    end
  end
end