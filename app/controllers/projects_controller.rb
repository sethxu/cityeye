class ProjectsController < ApplicationController
  def index
    @projects = Project.order("sequence").page params[:page]
    set_seo_meta("PROJECTS")
  end

end
