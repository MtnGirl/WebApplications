Rails.application.routes.draw do


  get 'home/index'
  devise_for :users
  root to: "home#index"  

  resources :enrollments do
    collection do
      get 'search'
    end
  end

  resources :students do
    collection do
      get 'search'
    end
  end

  resources :courses do
    collection do
      get 'search'
    end
  end

  resources :sections do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'courses#index'
end
