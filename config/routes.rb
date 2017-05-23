Rails.application.routes.draw do
  resources :tasks do
    resources :comments
  end
  
  get 'welcome/index'

  root 'welcome#index'
end
