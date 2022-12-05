class ProductsController < ApplicationController
  def index
    render json: Product.all, status: :ok
  end

  def show
    product = Product.find(params[:id])
    render json: product, status: :ok
  end

  def create
    prod = @current_user.recipes.create!(recipe_params)
    render json: prod, status: :created
  end

  private

  def products_params
    params.permit(:name, :price, :imageurl, :description)
  end
end
