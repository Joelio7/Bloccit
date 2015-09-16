Rails.application.routes.draw do


  resources :topics do

     resources  :posts, except: [:index]
     resources :sponsored_posts
     resources :advertisements
end
resources :questions
    resources :users, only: [:new, :create]
  get 'about' => 'welcome#about'
  root to: 'welcome#index'

end
