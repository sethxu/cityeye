class AboutsController < ApplicationController
  def index
    @categories = Category.all
    @abouts = About.order("created_at desc").limit(1)
    set_seo_meta("ABOUT US") 
  end
end
