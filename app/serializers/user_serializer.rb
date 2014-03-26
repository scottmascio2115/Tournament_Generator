class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :player_id, :param

  has_one :player, embed: :ids, include: true

  def param
    namePortion = email.split('@').first
    "#{namePortion.dasherize.parameterize.capitalize}"
  end
end
