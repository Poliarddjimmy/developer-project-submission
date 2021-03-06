class Video < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

    validates :link, presence: true, format: YT_LINK_FORMAT, uniqueness: true
end
