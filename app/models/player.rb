class Player < ActiveRecord::Base
  has_one :user
  has_many :player_teams
  has_many :teams, :through => :player_teams
  has_many :captain_teams, foreign_key: :captain_id, class_name: 'Team'
end
