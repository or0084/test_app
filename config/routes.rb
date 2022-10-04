Rails.application.routes.draw do

  namespace :admin do
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :admin do
     resources :users, only:[:index, :show, :edit, :update, :destroy]
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :user, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
