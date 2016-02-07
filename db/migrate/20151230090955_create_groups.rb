class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.integer :grade
      t.string :year

      t.timestamps null: false
    end
  end
end
