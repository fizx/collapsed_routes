ActionController::Routing::Routes.draw do |map|
  map.resources :posts
  map.resources :comments
  map.resources :users
end
