class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    # @orders = Order.where(user_id: current_user.id) or 
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def show
      @order = Order.find_by(id: params[:id])
      render "show.json.jbuilder"
  end

  def create 
    product = Product.find_by(id: params[:product_id]) #this it talking to the product database

    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax



    @order = Order.new(
      user_id: current_user.id,
      # product_id: params[:product_id],
      # quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    if @order.save
#carted_products is not the same at the table, model, controller
      carted_products = current_user.carted_products.where(status: "carted")
      carted_products.update_all(
        order_id: @order.id,
        status: "purchased"
        )

      render "show.json.jbuilder" 
    else 
      render json: {errors:@order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find_by(id: params["id"])
    @order.destroy
    render json: {message: "Order has been removed."}
  end
end
