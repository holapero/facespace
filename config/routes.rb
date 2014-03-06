FaceSpace::Application.routes.draw do
  get "users/index"
  match 'newsletter' => 'static#newsletter', via: [:get, :post]
  match '/contact' => 'static#contact', via: [:get, :post]
  devise_for :users, controllers: {registrations: 'registrations'}
  root "static#index"
end
