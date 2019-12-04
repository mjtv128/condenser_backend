class User < ApplicationRecord
    has_many :comments
    has_many :articles
    has_many :stories

    # validates :first_name, presence: true
    # validates :last_name, presence: true
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # validates :email, presence: true, uniqueness: true,
    #             uniqueness: {case_sensitive: true},
    #             length: {minimum: 5, maximum: 105 },
    #             format: {with: VALID_EMAIL_REGEX}
    # validates :password, presence: true

    has_secure_password

    
    
end
