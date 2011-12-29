class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @latest_products = Product.order('sequence').limit(5)
    if params[:id]
      @category_title = Category.find(params[:id])
      @products = Category.find(params[:id]).products.page params[:page]
    else
      @products = Category.first.products.page params[:page]
      @category_title = Category.first
    end

    set_seo_meta("PRODUCTS")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def show
    @latest_products = Product.order('sequence desc').limit(5)
    @categories = Category.all
    @product = Product.find(params[:id])
  end

end
