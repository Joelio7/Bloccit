Rails.application.routes.draw do


  resources :topics do


     resources :posts, except: [:index]
  resources :advertisements
end
  get 'about' => 'welcome#about'
  root to: 'welcome#index'

  end
