class AddGroupIdToWorksheet < ActiveRecord::Migration
  def change
    add_reference :worksheets, :group, index: true, foreign_key: true
  end
end
