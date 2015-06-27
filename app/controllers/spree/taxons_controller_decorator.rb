module Spree
  TaxonsController.class_eval do

    def package_list
      @taxons = Taxon.friendly.where(is_package_node: true)
      return unless @taxons
    end

  end
end
