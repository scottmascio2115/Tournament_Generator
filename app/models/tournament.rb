class Tournament < ActiveRecord::Base
  has_many :teams, inverse_of: :tournament, dependent: :destroy
  has_many :games, inverse_of: :tournament, dependent: :destroy

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
