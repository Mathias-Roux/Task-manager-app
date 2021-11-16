class TasksController < ApplicationController

  def tasks
    @all_tasks = Task.all
  end

end
