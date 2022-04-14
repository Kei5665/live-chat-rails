Rails.application.routes.draw do
  ## ======= 👇 ここから変更する=======
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }
  ## ====== 👆 ここまで変更する=======

  resources :messages, only: ['index']
end
