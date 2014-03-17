class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string   :name
      t.string   :twitter_handle
      t.string   :personal_url
      t.string   :phone
      t.text     :bio
      t.boolean  :captain,                default: false
      t.boolean  :tournament_creator,     default: false
      t.string   :city
      t.string   :state
      t.integer  :zip
      t.integer  :games_won
      t.integer  :games_lost
      t.integer  :games_played
      t.integer  :tournaments_won
      t.integer  :tournaments_lost
      t.integer  :tournaments_played
      t.timestamps
    end
  end
end
