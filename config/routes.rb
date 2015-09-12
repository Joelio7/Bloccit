Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :topics do

 # #34
     resources  :posts, except: [:index]
     resources :sponsored_posts
   end
  resources :advertisements
  root to: 'welcome#index'

end
