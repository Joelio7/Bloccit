Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :topics do
    resources :posts, expect: [:index]
    end
  resources :advertisement
  root to: 'welcome#index'
end
