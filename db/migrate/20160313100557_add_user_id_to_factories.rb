class AddUserIdToFactories < ActiveRecord::Migration
  def change
    add_reference :factories, :user, index: true, foreign_key: true
  end
end
