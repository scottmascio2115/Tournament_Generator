class PostSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :description

  has_many :comments, embed: :ids, include: true
  has_one :user, embed: :ids, include: true  
end
