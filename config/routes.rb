Rails.application.routes.draw do
  root to: 'cocktails#index', as: "root"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  # delete 'cocktails/:cocktail_id/doses/:id', to: 'doses#destroy', as: :delete_cocktail_dose
  resources :doses, only: [:destroy]
end
