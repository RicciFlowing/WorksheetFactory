class FactorySkillAssociationsController < AuthenticatedController


  def create
    @associaton = FactorySkillAssociation.new(associaton_params);
    if @associaton.save
      render json: {}, status: 200 #Empty response as frontend does not handle the response
    else
      render json: @associaton.errors, status: 400
    end
  end

  private
    def associaton_params
      params.require(:factory_skill_association).permit(:skill_id, :factory_id)
    end
end
