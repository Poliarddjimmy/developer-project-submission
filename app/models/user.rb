class User < ApplicationRecord
    has_many :videos, class_name: "Video", foreign_key: "user_id"

    has_secure_password
    validates :email , presence: true, uniqueness: true
end
