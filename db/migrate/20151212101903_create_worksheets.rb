class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.string :title
      t.belongs_to :worksheet_set, index: true

      t.timestamps null: false
    end
  end
end
