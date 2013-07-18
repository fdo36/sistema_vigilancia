SistemaVigilancia::Application.routes.draw do
  
  devise_for :users

  resources :camaras

  scope '/admin' do
    resources :users
  end
  

  root :to => "camaras#index"
  #devise_scope :user do
  #	root to: "devise/sessions#new"
  #end

  resources :messages, only: [:index, :create]
  match "contact" => "messages#index"
  
end
