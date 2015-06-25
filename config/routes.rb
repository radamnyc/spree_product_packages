Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  Spree::Core::Engine.add_routes do
    get 'products/show_package/:id' => 'products#show_package', :as => 'show_package'
    post 'orders/populate_from_package' => 'orders#populate_from_package', :as => 'populate_from_package'
  end


end
