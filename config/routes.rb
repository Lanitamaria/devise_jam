Rails.application.routes.draw do
  get 'admin/index'

  devise_for :users
  resources :stories
  root 'stories#index'

  get  'my_stories', to: 'stories#my_stories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
