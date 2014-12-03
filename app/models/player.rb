class Player < ActiveRecord::Base
  # Remember to create a migration!

  has_many :gamings
  has_many :games, through: :gamings
  validates :username, uniqueness: { case_sensitive: true }
end
