class ListsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.new(list_params)

    if @list.save
      redirect_to @list
    else
      render :new, status: :unproccessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = current_user.lists.find(params[:id])
  end

  def update
    @list = current_user.lists.find(params[:id])

    if @list.update(list_params)
      redirect_to @list
    else
      render :edit, status: :unproccessable_entity
    end
  end

  def destroy
    @list = current_user.lists.find(params[:id])
    @list.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def list_params
      params.require(:list).permit(:title, :description)
    end
end
