class CommentSerializer < ActiveModel::Serializer
  attributes :id, :replier, :title, :description

  has_many :posts, embed: :ids, include: true
end
