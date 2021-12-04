Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users, only:[:show, :edit, :update]
  resources :gears, except:[:show]
end
