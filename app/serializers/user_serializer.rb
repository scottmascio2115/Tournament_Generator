class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :player_id, :name

  has_one :player, embed: :ids, include: true

  def name
    namePortion = email.split('@').first
    "#{namePortion.dasherize.parameterize.capitalize}"
  end
end
