class FactorySkillAssociationController < ApplicationController


  def create
    @associaton = FactorySkillAssociation.new(associaton_params);
    if @associaton.save
      render json: @associaton, status: 200
    else
      render json: @associaton.errors, status: 400
    end
  end

  private
    def associaton_params
      params.require(:association).permit(:skill_id, :factory_id)
    end
end
