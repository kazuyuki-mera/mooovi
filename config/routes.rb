TechReviewSite::Application.routes.draw do
  root 'products#index'
  resources :products, only: :show do
    collection do
      get 'search'
    end
  end
end
