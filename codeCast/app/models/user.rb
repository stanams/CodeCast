class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, :session_token, :password_digest, presence: true
  validates :email, :password_digest, uniqueness: true

  has_many :casts
  has_many :comments
  has_many :ratings

end
