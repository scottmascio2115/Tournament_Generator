class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :last_sign_in_at, :sign_in_count, :player_id

end
