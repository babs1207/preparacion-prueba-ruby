class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]
  def index 
    @product = Product.new
    @products = Product.all
  end

  def create 
    product = Product.new(product_params)
    product.save 
    if product.save
      redirect_to detail_path(product), notice: 'Se creo producto con exito'
    else
      redirect_to detail_path(product), notice: 'No se pudo crear producto'
    end
  end

  def show
  end

  def destroy 
    @product.destroy
    redirect_to root_path
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end

end
