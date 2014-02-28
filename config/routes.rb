FaceSpace::Application.routes.draw do
  get "users/index"
  devise_for :users
  root "static#index"
end
