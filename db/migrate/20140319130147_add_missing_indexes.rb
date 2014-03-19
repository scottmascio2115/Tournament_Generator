class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :games, :tournament_id
    add_index :games, :home_team_id
    add_index :games, :away_team_id
    add_index :teams, :tournament_id
    add_index :teams, :captain_id
    add_index :player_teams, :player_id
    add_index :player_teams, :team_id
    add_index :users, :player_id
  end
end
