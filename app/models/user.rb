class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :player, inverse_of: :user
  has_many :posts, inverse_of: :user
  validates :email, presence: true

  def ensure_auth_token!
    self.authentication_token = generate_auth_token
    self.save!
  end

  def generate_auth_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).exists?
    end
  end
end
