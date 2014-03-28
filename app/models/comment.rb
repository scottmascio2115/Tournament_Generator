class Comment < ActiveRecord::Base
  has_many :comment_posts, inverse_of: :comment
  has_many :posts, through: :comment_posts, inverse_of: :comments

end
