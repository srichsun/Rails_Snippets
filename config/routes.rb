Rails.application.routes.draw do
  resources :bitches
  root "countries#index"
  get 'first_way', to: 'countries#first_way'
  get 'second_way', to: 'countries#second_way'
  post '/get_a_girl', to: 'countries#get_a_girl'
  get '/get_a_boy', to: 'countries#get_a_boy'
  post '/get_a_boy', to: 'countries#get_a_boy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
