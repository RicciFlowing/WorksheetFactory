class GroupsController < ApplicationController

  def index
    @groups = Group.includes(:worksheets).all
    render json: @groups
  end

  def show
    @group = Group.includes(:worksheets).find(params[:id])
    render json: @group
  end

end
