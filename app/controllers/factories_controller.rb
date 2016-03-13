class FactoriesController < AuthenticatedController
  def index
    @factories = current_user.factories
    render json: @factories
  end

  def create
    @factory = Factory.new(factory_params);
    @factory.user = current_user
    if @factory.save
      render json: @factory, status: 200
    else
      render json: @factory.errors, status: 400
    end
  end

  private
    def factory_params
      params.require(:factory).permit(:name, :factory_ids)
    end
end
