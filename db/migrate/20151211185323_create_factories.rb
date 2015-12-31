class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.timestamps null: false
      t.belongs_to :group, index: true
    end
  end
end
