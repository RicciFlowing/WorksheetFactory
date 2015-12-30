class WorksheetSetsController < ApplicationController

  def index
    @worksheet_sets = WorksheetSet.all
    render json: @worksheet_sets
  end

end
