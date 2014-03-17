class TeamSerializer < ActiveModel::Serializer
  attributes :id, :jersey_name, :captain, :tournament_id

  has_many :players, embed: :ids, include: true
  has_one :tournament, embed: :ids, include: true
  has_many :home_games, embed: :ids, include: true, root: :games
  has_many :away_games, embed: :ids, include: true, root: :games
end
