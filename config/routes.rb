Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :topics do

 # #34
     resources :sponsored_post, :posts, except: [:index]

  resources :advertisements
  root to: 'welcome#index'
  end
end
