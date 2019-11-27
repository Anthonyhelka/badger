Rails.application.routes.draw do
    devise_for :users

    root controller: :servers, action: :index

    resources :servers
    resources :channels
    resources :channel_messages
end
