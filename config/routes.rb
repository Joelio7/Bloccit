Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :posts
  resources :advertisement
  resources :question
  root to: 'welcome#index'
end
