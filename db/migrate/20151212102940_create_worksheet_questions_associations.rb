class CreateWorksheetQuestionsAssociations < ActiveRecord::Migration
  def change
    create_table :worksheet_questions_associations do |t|
      t.belongs_to :worksheet, index: true, foreign_key: true
      t.belongs_to :question, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
