class StatisticsController < ApplicationController

def index
  @statistics = Statistic.all
  render json: @statistics
end

def show
  @statistic = Statistic.find(params[:id])
  render json: @statistic
end

end
