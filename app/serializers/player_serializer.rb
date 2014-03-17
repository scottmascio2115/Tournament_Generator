class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :twitter_handle, :personal_url, :phone, :bio, :captain, :tournament_creator, :city, :state, :zip, :games_won, :games_lost, :games_played, :tournaments_won, :tournaments_lost, :tournaments_played

  has_one :user, embed: :ids, include: true
  has_many :teams, embed: :ids, include: true
end
