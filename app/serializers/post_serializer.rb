class PostSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :description

  has_many :comments, embed: :ids, include: true
end
