class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.string :description
      t.string :year
      t.integer :grade

      t.timestamps null: false
    end
  end
end
