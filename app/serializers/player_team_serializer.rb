class PlayerTeamSerializer < ActiveModel::Serializer
  attributes :id

  has_one :player, embed: :ids, include: true
  has_one :team, embed: :ids, include: true
end
