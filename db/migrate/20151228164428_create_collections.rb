class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.has_many :worksheets
      t.belongs_to :factory, index: true, foreign_key: true
      t.string :name
      t.integer :grade

      t.timestamps null: false
    end
  end
end
