Rails.application.routes.draw do

  resources :authors, only: [:show] do
    #nested resources for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:post_id', to: 'authors#post', as:'author_post'
  root 'posts#index'
end
