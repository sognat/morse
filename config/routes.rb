Morse::Application.routes.draw do
  resources :pastes do
    get "download", on: :member
  end

  resource :user do
    post "reset_token", on: :member
  end
  resource :session, only: [:new, :create, :destroy]

  get 'shell' => "pages#shell", :as => "shell_page"
  root to: "pastes#new"
end
