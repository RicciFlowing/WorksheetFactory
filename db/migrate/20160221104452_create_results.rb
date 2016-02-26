class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :positive
      t.integer :negative
      t.belongs_to :question, index: true, foreign_key: true
      t.belongs_to :worksheet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
