Rails.application.routes.draw do
  get 'welcome/homepage'
  resources :articles
  root 'welcome#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
