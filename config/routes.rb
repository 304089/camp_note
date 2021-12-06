Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users, only:[:show, :edit, :update]
  resources :gears, except:[:show]
  resources :plans do
    collection do
      post :gear_choice
    end
  end
end
