class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all.order('created_at desc')
  end

  def show

  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task
    else
      render "new"
    end
  end

  def new
    @task = Task.new
  end

  def edit

  end

  def update
    if @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :company, :url, :category_id)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
