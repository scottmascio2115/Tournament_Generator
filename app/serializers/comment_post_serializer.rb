class CommentPostSerializer < ActiveModel::Serializer
  attributes :id, :comment_id, :post_id

  has_one :comment, embed: :ids, include: true
  has_one :post, embed: :ids, include: true
end
