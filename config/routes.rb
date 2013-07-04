SistemaVigilancia::Application.routes.draw do
  
  devise_for :users

  resources :camaras

  scope '/admin' do
    resources :users
  end
  

  root :to => "camaras#index"

  
end
