class AddSectorIdToSkills < ActiveRecord::Migration
  def change
      add_reference :skills, :sector, index: true, foreign_key: true
  end
end
