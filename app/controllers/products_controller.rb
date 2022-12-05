class ProductsController < ApplicationController
  private

  def products_params
    params.permit(:name, :price, :imageurl, :description)
  end
end
