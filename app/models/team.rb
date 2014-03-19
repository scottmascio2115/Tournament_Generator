class Team < ActiveRecord::Base
  has_many :player_teams
  has_many :players, :through => :player_teams
  belongs_to :tournament, inverse_of: :teams
  belongs_to :captain, class_name: 'Player', inverse_of: :captain_teams
  has_many :home_games, class_name: 'Game', foreign_key: :home_team_id, inverse_of: :home_team
  has_many :away_games, class_name: 'Game', foreign_key: :away_team_id, inverse_of: :away_team

  validates :jersey_name, presence: true
  validates :jersey_name, uniqueness: true
end
