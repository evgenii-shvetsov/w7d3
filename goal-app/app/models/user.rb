class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: {minimum: 6}, allow_nil: true

    attr_reader :password
    before_validation :ensure_session_token

end
