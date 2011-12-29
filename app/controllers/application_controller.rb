class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init

  def init
    @setting = {:site_name => "CityEye", :sub_title => "CityEye", 
          :meta_keywords => "personlab,ruby on rails", 
          :meta_description => "CityEye.",
          :home_show => ''}
  end

  # 设置SEO 的Meta 值
  def set_seo_meta(title,keywords = '',desc = '')
    if title
      @page_title =  "#{title}"
      if params[:page]
        @page_title += " &raquo; (#{params[:page]}page)"
      end
      @page_title += " &raquo; #{@setting[:site_name]}"
    else
      @page_title = @setting[:site_name]
    end
    @meta_keywords = keywords
    @meta_description = desc
  end

end
