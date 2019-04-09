class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @products = Product.all

    if params["search"]
      @products = @products.where("name ILIKE ?", "%#{params["search"]}%")
    end

    if params["discount"]
      @products = @products.where("price < ?", 10)
    end

    if params["sort"] == "price" && params["sort_order"] == "asc"
      @products = @products.order(:price => :asc)
    elsif params["sort"] == "price" && params["sort_order"] == "desc"
      @products = @products.order(:price => :desc)
    else
      @products = @products.order(:id => :desc)
    end
    render "index.json.jbuilder"
  end

  def show
      @product = Product.find_by(id: params[:id])
      render "show.json.jbuilder"
  end
  
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product Successfully Destroyed"}
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      rating: params[:rating],
      # image_url: params[:image_url],
      number_of_products: params[:number_of_products],
      # user_id: current_user.id
      supplier_id: 1
    )
    if @product.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.rating = params[:rating] || @product.rating
    # @product.image_url = params[:image_url] || @product.image_url
    @product.number_of_products = params[:number_of_products] || @product.number_of_products
    if @product.save
      render "show.json.jbuilder" 
    else 
      render json: {errors:@product.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
