class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :style, :champion, :sign_up_start, :sign_up_end

  has_many :games, embed: :ids, include: true
end
