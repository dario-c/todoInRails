class TasksController < ApplicationController

  def create
    # raise params.inspect
    @task = Task.new(task_params)
    if @task.save!
      puts "SAVED"
      redirect_to projects_path
    else
      redirect_to projects_path
    end
  end

private
  def task_params
    params[:task].permit(:project_id, :name, :status)
  end

end