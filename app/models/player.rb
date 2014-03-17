class Player < ActiveRecord::Base
  has_one :user
  has_many :player_teams
  has_many :teams, :through => :player_teams
end
