module OpenFoodDB
  class API < Grape::API
    default_format :json
    format :json
  
    resources :food_stuffs do
    
      get '/show/:id' do
        FoodStuff.find_by_id(params[:id]).to_json
      end
      
      get '/bar_code/:nr' do
        food_stuff_found = nil
        food_stuffs = FoodStuff.all
        
        food_stuffs.each do |f|
          bar_code = f.bar_code_number
          bar_code = bar_code.gsub(/\s+/, "")
          
          if bar_code == params[:nr]
            food_stuff_found = f
          end
        end
        
        return food_stuff_found
      end
    end
  end
end