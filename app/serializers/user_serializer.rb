class UserSerializer < ActiveModel::Serializer
  attributes :id, :player_id

  has_one :player, embed: :ids, include: true
end
