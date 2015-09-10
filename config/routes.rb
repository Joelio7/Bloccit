Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :topics do


     resources :posts, except: [:index]
  resources :advertisements
end
  root to: 'welcome#index'

  end
