class WorksheetsController < ApplicationController
  before_action :set_worksheet, only: [:show, :update, :destroy]

  def index
    @worksheets = Worksheet.includes(:questions).all
    render json: @worksheets
  end

  def show
    render json: @worksheet
  end

  def create
    group     = Group.find(worksheet_params[:group_id])
    questions = group.get_questions
    title = "Worksheet #{group.worksheets.count+1}"
    @worksheet = Worksheet.new({title: title, group: group, questions: questions});
    if @worksheet.save
      render json: @worksheet, status: 200
    else
      render json: @worksheet.errors, status: 400
    end
  end

  def update
    if @worksheet.update(worksheet_params)
      render json: @worksheet, status: 200
    else
      render json: @worksheet.errors, status: 400
    end
  end

  def destroy
    @worksheet.destroy
    head :no_content
  end

  private
    def set_worksheet
      @worksheet = Worksheet.find(params[:id])
    end

    def worksheet_params
      params.require(:worksheet).permit(:title, :group_id, :archived)
    end
end
