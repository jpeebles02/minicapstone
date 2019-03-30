class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @suppliers = Supplier.all
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      rating: params[:rating],
      supplier_id: params[:supplier_id]
    )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @suppliers = Supplier.all
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update 
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.id = params[:id]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.rating = params[:rating]
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
  end
end
