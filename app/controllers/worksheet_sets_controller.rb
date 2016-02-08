class WorksheetSetsController < ApplicationController
  before_action :set_worksheet_set, only: [:show, :destroy]

  def index
    @sets = WorksheetSet.includes(:questions).all
    render json: @sets
  end

  def show
    render json: @set
  end

  def create
    @set = WorksheetSet.new(worksheet_set_params);
    if @set.save
      render json: @set, status: 200
    else
      render json: @set.errors, status: 400
    end
  end

  def destroy
    @set.destroy
    head :no_content
  end

  private
    def worksheet_set_params
      params.require(:worksheet_set).permit(:name, :factory_id)
    end

    def set_worksheet_set
      @set = WorksheetSet.find(params[:id])
    end
end
