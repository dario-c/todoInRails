class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
  end

  def new
   
  end

  def create
    # raise params.inspect
    @project = Project.new(project_params)
    @projects = Project.all
    
    if @project.save
      render 'index'
    else
      render 'index'
    end
  end

private
  def project_params
    params[:project].permit(:name)
  end

end