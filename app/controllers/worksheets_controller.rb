class WorksheetsController < ApplicationController
  def index
    @worksheets = Worksheet.all
    render json: @worksheets
  end
end
