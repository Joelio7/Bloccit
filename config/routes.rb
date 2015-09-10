Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'



  resources :questions
  resources :topics do
     resources  :posts, except: [:index]
  resources :advertisements
  root to: 'welcome#index'
  end
end
