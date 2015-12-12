class FactoriesController < ApplicationController
  def index
    @factories = Factory.all
    render json: @factories
  end
end
