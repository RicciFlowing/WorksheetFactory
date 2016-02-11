class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
