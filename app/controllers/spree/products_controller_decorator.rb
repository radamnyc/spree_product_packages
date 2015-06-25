module Spree
  ProductsController.class_eval do

    def show_package
      @taxon = Taxon.friendly.find(params[:id])
      return unless @taxon
      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true))
      @products = @searcher.retrieve_products
    end

  end
end
