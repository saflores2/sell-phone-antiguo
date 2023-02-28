class ProductsController < ApplicationController
  before_action :set_product, only: %i[show, update, destroy, edit]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save#@product.photo.attached? && @list.save
      redirect_to product_path(@product.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :year, :brand, :operator, :model, :description, :status, :price, :available)#:photo
  end

  def set_product
    @products = Products.find(params[:id])
  end
end
