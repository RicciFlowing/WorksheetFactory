class WorksheetsController < ApplicationController
  def index
    @worksheets = Worksheet.includes(:questions).all
    render json: @worksheets
  end

  def show
    @worksheet = Worksheet.includes(:questions).find(params[:id])
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
    @worksheet = Worksheet.find(update_params[:id])
    if @worksheet.update(update_params[:worksheet])
      render json: @worksheet, status: 200
    else
      render json: @worksheet.errors, status: 400
    end
  end

  def destroy
    @worksheet   = Worksheet.find(params[:id])
    @worksheet.destroy
    head :no_content
  end

  private
    def update_params
      params.permit!
      #params.require(:worksheet).permit(:title, :group_id, :archived)
    end
    def worksheet_params
      params.require(:worksheet).permit(:title, :group_id, :archived)
    end
end
