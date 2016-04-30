class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
