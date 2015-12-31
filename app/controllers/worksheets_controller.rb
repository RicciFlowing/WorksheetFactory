class WorksheetsController < ApplicationController
  def index
    @worksheets = Worksheet.all
    render json: @worksheets
  end

  def show
    @worksheet = Worksheet.includes(:questions).find(params[:id])
    render json: @worksheet
  end

  def create
    group   = Group.find(worksheet_params[:group_id])
    @worksheet = Worksheet.new({title: worksheet_params[:title],group: group, questions: group.get_questions});
    if @worksheet.save
      render json: @worksheet, status: 200
    else
      render json: @worksheet.errors, status: 400
    end
  end

  private
    def worksheet_params
      params.require(:worksheet).permit(:title, :group_id)
    end
end
