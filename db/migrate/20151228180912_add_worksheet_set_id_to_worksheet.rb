class AddWorksheetSetIdToWorksheet < ActiveRecord::Migration
  def change
    add_column :worksheets, :worksheet_set_id, :belongs_to, index: true
  end
end
