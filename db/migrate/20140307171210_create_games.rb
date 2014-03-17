class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string  :winner
      t.integer :score
      t.integer :home_team_id, null: false
      t.integer :away_team_id, null: false
      t.integer :tournament_id

      t.timestamps
    end
  end
end
