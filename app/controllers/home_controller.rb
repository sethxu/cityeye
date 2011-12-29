class HomeController < ApplicationController
  def index
    @categories = Category.all
    @abouts = About.order("created_at desc").limit(1)
    @latest_products = Product.order('sequence').limit(8)
    set_seo_meta("HOME") 
  end

end
