class GroupsController < ApplicationController

  def index
    @worksheet_sets = Group.all
    render json: @worksheet_sets
  end

  def show
    @worksheet_set = Group.find(params[:id])
    render json: @worksheet_set
  end

end
