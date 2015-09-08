Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :topics do
 # #34
     resources :sponsored_post, :posts, except: [:index]
   end

   get 'about' => 'welcome#about'
   root to: 'welcome#index'
 end
