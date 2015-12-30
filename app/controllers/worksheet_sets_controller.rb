class WorksheetSetsController < ApplicationController

  def index
    @worksheet_sets = WorksheetSet.all
    render json: @worksheet_sets
  end

  def show
    @worksheet_set = WorksheetSet.find(params[:id])
    render json: @worksheet_set
  end

end
