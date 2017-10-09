Rails.application.routes.draw do
  resources :golden_bears do
    get 'display', to: 'golden_bears#display', as: :display
    resources :fish
  end

  root to: 'golden_bears#index'
end
