Rails.application.routes.draw do
  resources :videos do 
    member do 
      patch "stars"
    end
  end
  root to: "videos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
