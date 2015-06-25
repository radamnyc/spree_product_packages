module Spree
  OrdersController.class_eval do

    def populate_from_package
      # we'll store the array of varient id's in the varient id so it will pass validation
      # varients = params[:varient_id];
      order    = current_order(create_order_if_necessary: true)
      options  = {}

      begin
        highest_index_of_products = params['product_count'].to_i - 1
        Rails.logger.debug ("number of products: #{highest_index_of_products}")
        for i in 0..highest_index_of_products
          variant  = Spree::Variant.find(params["variant_id_#{i}"])
          quantity = params["quantity_#{i}"]
          order.contents.add(variant, quantity, options)
        end
      rescue ActiveRecord::RecordInvalid => e
        error = e.record.errors.full_messages.join(", ")
      end

      if error
        flash[:error] = error
        redirect_back_or_default(spree.root_path)
      else
        respond_with(order) do |format|
          format.html { redirect_to cart_path }
        end
      end
    end

  end
end
