Spree::Core::Engine.routes.append do
  namespace :admin do
    match '/orders/:id(.:format)', to: 'orders#show', via: :get
    resource :print_invoice_settings, only: [:edit, :update]
  end
end
