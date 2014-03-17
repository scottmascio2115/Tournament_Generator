class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :style, :champion

  has_many :games, embed: :ids, include: true
end
