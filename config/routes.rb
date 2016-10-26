Wildshop::Engine.routes.draw do
  devise_for :admin, class_name: "Wildshop::User", module: :devise, controllers: { sessions: 'wildshop/admin/sessions' }

  namespace :admin do
    resources :products, except: %i(show)
  end
end
