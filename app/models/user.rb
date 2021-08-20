class User < ApplicationRecord
    has_many :photos, dependent: :destroy

    has_secure_password
    
    validates :username, :password, presence: true
    validates :password, confirmation: true
    validates :username, uniqueness: { case_sensitive: false } 
end
