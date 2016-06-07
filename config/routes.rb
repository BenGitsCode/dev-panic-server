Rails.application.routes.draw do
  resources :symptoms, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  post '/get-solutions/' => 'symptoms#getsolutions'
  resources :users, only: [:index, :show] do
    resources :symptoms, shallow: true
  end
end
