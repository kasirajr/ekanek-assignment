Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :documents, only: [:index, :show, :destroy, :new, :create] do
    post 'share', on: :member
  end
  scope ActiveStorage.routes_prefix do
    get "/blobs/redirect/:signed_id/*filename" => "secure_blobs#show"
  end
  get ':id' => "shortener/shortened_urls#show"
  root to: redirect('/documents')
end
