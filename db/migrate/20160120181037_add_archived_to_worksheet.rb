class AddArchivedToWorksheet < ActiveRecord::Migration
  def change
    add_column :worksheets, :archived, :boolean
  end
end
