Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'topics#index'
  resources :topics do
    resources :comments
    member do
      post 'downvote'
      post 'upvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
