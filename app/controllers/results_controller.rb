class ResultsController < ApplicationController

  before_action :set_result, only: [:show, :destroy]

  def show
    render json: @result
  end

  def create
    @result = Result.new(result_params);
    if @result.save
      render json: @result, status: 200
    else
      render json: @result.errors, status: 400
    end
  end

  def destroy
    @result.destroy
    head :no_content
  end

  private
    def result_params
      params.require(:result).permit(:positive, :negative, :question_id, :worksheet_id)
    end

    def set_result
      @result = Result.find(params[:id])
    end

end
