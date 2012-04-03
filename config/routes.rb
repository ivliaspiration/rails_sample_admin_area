RailsSampleAdminArea::Application.routes.draw do
  resources :posts, only: [:index, :show]

  namespace :admin do
    resources :posts
  end

  match '/admin' => 'admin/admin#index', as: :admin_path 

  root :to => 'welcome#index'

end
