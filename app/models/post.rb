class Post < ActiveRecord::Base
  belongs_to :user, inverse_of: :posts
  has_many :comment_posts, inverse_of: :post, dependent: :destroy
  has_many :comments, through: :comment_posts, inverse_of: :posts

end

