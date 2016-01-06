class GroupsController < ApplicationController

  def index
    @groups = Group.includes(:worksheets).all
    render json: @groups
  end

  def show
    @group = Group.includes(:worksheets).find(params[:id])
    render json: @group
  end

  def create
    @group = Group.new(group_params);
    if @group.save
      render json: @group, status: 200
    else
      render json: @group.errors, status: 400
    end
  end

  private
    def group_params
      params.require(:group).permit(:name, :factory_id, :description, :grade, :year)
    end

end
