class TasksController < ApplicationController
  before_action :set_find_action, only: %i[show edit update destroy]

  def index
    @tasks = Task.all.group_by { | task |
      task.created_at
    }
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def destroy
    @task.destroy

    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_find_action
    @task = Task.find(params[:id])
  end
end
