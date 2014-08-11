class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
    @tasks = Task.all
    @task = Task.new
  end

  def create
    # raise params.inspect
    @project = Project.new(project_params)
    @projects = Project.all
    @tasks = Task.all
    @task = Task.new
    
    # @task = Task.new(task_params)
    # @tasks = Task.all

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

  def task_params
    params[:project].permit(:name)
  end

end