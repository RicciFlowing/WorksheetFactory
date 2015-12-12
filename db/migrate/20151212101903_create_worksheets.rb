class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.string :title
      t.belongs_to :factory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
