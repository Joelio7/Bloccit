Rails.application.routes.draw do

  resources :topics do

     resources  :posts, except: [:index]
  resources :advertisements
end
resources :questions
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
  get 'about' => 'welcome#about'
  root to: 'welcome#index'

end
