class StatisticsController < ApplicationController

def index
  @statistic = Statistic.all
  render json: @statistic
end

end
