class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  belongs_to :player, inverse_of: :user
  has_many :posts, inverse_of: :user

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

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
       user.provider = auth.provider
       user.uid = auth.uid
       user.twitter_id = auth.extra.raw_info.id
       user.twitter_screen_name = auth.extra.raw_info.screen_name
       user.twitter_display_name = auth.extra.raw_info.name
       user.twitter_location = auth.info.location
       user.password = Devise.friendly_token[0,20]
    end
  end

  def display_name
    if twitter_id
      "#{twitter_display_name}"
    else
      email
    end
  end

  def email_required?
    twitter_id.nil?
  end
end
