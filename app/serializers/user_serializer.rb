class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :player_id, :name, :provider, :uid, :twitter_id, :twitter_screen_name, :twitter_display_name, :twitter_location, :post_id
  has_one :player, embed: :ids, include: true
  has_many :posts, embed: :ids, include: true

  def name
    namePortion = email.split('@').first
    "#{namePortion.dasherize.parameterize.capitalize}"
  end
end
