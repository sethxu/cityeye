class CertificatesController < ApplicationController
  def index
    @certificates = Certificate.order("sequence").page params[:page]
    set_seo_meta("CERTIFICATES") 
  end

end
