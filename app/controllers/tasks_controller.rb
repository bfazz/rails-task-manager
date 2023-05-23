class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create]

  def index
    @tasks = Task.all
  end

  def show
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
  # STRONG_PARAMS

  def task_params

    params.require(:task).permit(:title, :details, :completed)
  end

end
