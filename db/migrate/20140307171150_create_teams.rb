class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string   :jersey_name
      t.string   :captain
      t.integer  :tournament_id
      t.timestamps
    end
  end
end
