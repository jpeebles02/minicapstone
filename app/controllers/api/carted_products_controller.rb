class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user
  
  def create
    # product = Product.find_by(id: params[:product_id])

    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      # order_id: 
      status: "carted",
      user_id: current_user.id
    
    )
    if @carted_product.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@carted_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    # @carted_products = CartedProduct.all
    # @orders = Order.where(user_id: current_user.id) or 
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jbuilder"
  end

  def destroy
      remove_products = current_user.carted_products.where(status: "carted",
        id: params[:id]
        )
      remove_products.update_all(
        status: "removed"
        )
      # remove_products.destroy
    render json: {message: "Product Successfully Removed"}
  end
end


