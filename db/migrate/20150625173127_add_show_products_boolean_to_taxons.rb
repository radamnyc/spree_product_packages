class AddShowProductsBooleanToTaxons < ActiveRecord::Migration
  def change
      add_column :spree_taxons, :show_products, :boolean, default: false
  end
end
