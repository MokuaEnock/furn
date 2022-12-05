class ProductsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

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

  def record_not_found
    render json: { error: "Article not found" }, status: :not_found
  end
end
