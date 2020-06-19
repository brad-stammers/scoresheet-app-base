Rails.application.routes.draw do

  resources :innings, shallow: true do
    resources :battingdetails do
      resources :batters
    end
    resources :bowlingdetails do
      resources :bowlers
    end
    resources :overs do
      resources :balls
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
