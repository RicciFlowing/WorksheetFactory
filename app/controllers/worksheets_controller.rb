class WorksheetsController < AuthenticatedController
  before_action :set_worksheet, only: [:show, :update, :destroy]

  def index
    @worksheets = Worksheet.includes(:questions).all
    render json: @worksheets
  end

  def show
    render json: @worksheet
  end

  def create
    set     = WorksheetSet.find(worksheet_params[:worksheet_set_id])
    questions = set.get_questions
    title = "Worksheet #{set.worksheets.count+1}"
    @worksheet = Worksheet.new({title: title, worksheet_set: set, questions: questions, archived: worksheet_params[:archived] });
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
      params.require(:worksheet).permit(:title, :worksheet_set_id, :archived)
    end
end
