ShirtApp::Application.routes.draw do
  devise_for :users
  root "shirts#index"
  resources :shirts
end
