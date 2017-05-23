Rails.application.routes.draw do
  resources :tasks
  get 'welcome/index'

  root 'welcome#index'
end
