Rails.application.routes.draw do

  scope module: :public do
    resources :users, only:[:show, :edit, :update]
    get '/users/unsubscribe/:id' => 'users#unsubscribe', as: 'unsubscribe'
    patch '/users/withdraw/:id' => 'users#withdraw', as: 'withdraw'
  end

  root :to => "public/homes#top"

  namespace :admin do
     resources :users, only:[:index, :show, :edit, :update, :destroy]
     resources :posts, only:[:index, :show, :destroy]
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
