class GameSerializer < ActiveModel::Serializer
  attributes :id, :winner, :score, :home_team_id, :away_team_id, :tournament_id

  has_one :tournament, embed: :ids, include: true
  has_one :home_team, embed: :ids, include: true, root: :teams
  has_one :away_team, embed: :ids, inclide: true, root: :teams
end
