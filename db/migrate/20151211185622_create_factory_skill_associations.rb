class CreateFactorySkillAssociations < ActiveRecord::Migration
  def change
    create_table :factory_skill_associations do |t|
      t.belongs_to :factory, index: true
      t.belongs_to :skill, index: true

      t.timestamps null: false
    end
  end
end
