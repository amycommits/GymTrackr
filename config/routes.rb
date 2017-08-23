Rails.application.routes.draw do
  resources :user_gym_info_raids
  resources :raids, :controller => "user_gym_info_raids", :path_names => { :new => "add", :show => 'list' }
  devise_for :users
  resources :gym_infos
  devise_for :models
  resources :dashboard, only: [:index]
  get 'my_raids' => 'dashboard#user_raids'
  get 'add_gym_raids' => 'gym_infos#add_raids'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
end
