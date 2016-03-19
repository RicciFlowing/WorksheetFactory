class GroupsController < AuthenticatedController

  def index
    @groups = current_user.groups
    render json: @groups
  end

  def show
    @group = current_user.find(params[:id])
    render json: @group
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user  
    if @group.save
      Statistic.create({group: @group})
      render json: @group, status: 200
    else
      render json: @group.errors, status: 400
    end
  end

  def destroy
    @group = current_user.find(params[:id])
    @group.destroy
    head :no_content
  end

  private
    def group_params
      params.require(:group).permit(:name, :description, :grade, :year)
    end

end
