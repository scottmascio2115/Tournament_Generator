class Player < ActiveRecord::Base
  has_one :user, inverse_of: :player
  has_many :player_teams, inverse_of: :player
  has_many :teams, :through => :player_teams, inverse_of: :players
  has_many :captain_teams, foreign_key: :captain_id, class_name: 'Team', inverse_of: :captain

  validates :name, presence: true
end

