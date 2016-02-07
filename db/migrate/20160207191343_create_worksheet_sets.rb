class CreateWorksheetSets < ActiveRecord::Migration
  def change
    create_table :worksheet_sets do |t|
      t.string :title
      t.belongs_to :factory, index: true, foreign_key: true
      t.belongs_to :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
