class TasksController < ApplicationController
  #before_action :authenticate_user!

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)
    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.destroy
    redirect_to list_path(@list), status: 303
  end
  
    private
    def task_params
      params.require(:task).permit(:title, :description)
    end
end
