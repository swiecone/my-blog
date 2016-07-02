class User < ActiveRecord::Base
    has_secure_password

	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { minimum: 3, maximum: 40}, 
				uniqueness: { case_sensitive: false }

	VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :email, presence: true, length: {minimum: 7, maximum: 105},
							uniqueness: { case_sensitive: false },
							uniqueness: true,
							format: { with: VALID_EMAIL_REGEX }

	validates :password, presence: true 
end

