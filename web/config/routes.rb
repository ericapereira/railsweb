Rails.application.routes.draw do
  get 'welcome/homepage'
  post 'report/reports'
  resources :articles
  get 'report/index'
  get 'report/homepage'
  root 'welcome#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
