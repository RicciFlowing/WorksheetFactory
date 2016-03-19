class QuestionsController < AuthenticatedController
  def index
    @questions = Question.all
    render json: @questions
  end

  def show
    @question = Question.find(params[:id])
    render json: @question
  end

  def update

    render json: @question
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end
end
