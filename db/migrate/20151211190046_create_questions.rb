class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :solution
      t.belongs_to :skill, index: true, foreign_key: true
      t.belongs_to :factory_skill_association, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
