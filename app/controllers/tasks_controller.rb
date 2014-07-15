class TasksController < ApplicationController

  before_action :find_task_list

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = @task_list.tasks.new(task_params)
    if @task.save
      redirect_to root_path, notice: "Task was created successfully!"
    else
      render :new
    end
  end

  def update
    @task = @task_list.tasks.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to root_path, notice: "Task was updated successfully!"
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:description, :due_date)
  end

  def find_task_list
    @task_list = TaskList.find(params[:task_list_id])
  end

end