class AddCollectionIdToWorksheet < ActiveRecord::Migration
  def change
    add_column :worksheets, :collection_id, :belongs_to, index: true
  end
end
