class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.integer :grade
      t.string :year
      t.belongs_to :factory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
