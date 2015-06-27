module Spree
  TaxonsHelper.class_eval do

    def getUrlForTaxonDisplay(taxon)
      if taxon.is_package_node
        show_package_path(taxon)
      else
        seo_url(taxon)
      end
    end
  end
end