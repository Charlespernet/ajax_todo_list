class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.all
    @task = Task.create(task_params)
  end

  def edit
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.update(done: !@task.done)
  end

  def update

  end

  private

  def task_params
    params.require(:task).permit(:title)
  end
end
