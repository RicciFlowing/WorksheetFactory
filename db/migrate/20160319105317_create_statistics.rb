class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.belongs_to :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
