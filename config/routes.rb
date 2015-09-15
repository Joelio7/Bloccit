Rails.application.routes.draw do

  resources :topics do

     resources  :posts, except: [:index]
  resources :advertisements
end
resources :questions
get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
