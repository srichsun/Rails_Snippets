Rails.application.routes.draw do
  resources :bitches
  root "countries#index"
  post '/get_a_girl', to: 'countries#get_a_girl'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
