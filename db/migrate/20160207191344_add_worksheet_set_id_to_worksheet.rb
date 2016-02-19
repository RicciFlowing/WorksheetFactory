class AddWorksheetSetIdToWorksheet < ActiveRecord::Migration
  def change
    add_reference :worksheets, :worksheet_set, index: true, foreign_key: true
  end
end
