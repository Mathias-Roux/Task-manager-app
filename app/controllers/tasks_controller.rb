class TasksController < ApplicationController

  def tasks
    @all_tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
end
