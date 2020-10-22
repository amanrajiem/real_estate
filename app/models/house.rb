class House < ApplicationRecord
    has_attached_file :picture
    validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    validates :owner, presence: true
    validates :address, presence: true
    validates :rooms, presence: true
    validates :floors, presence: true
    validates :price, presence: true
    validates :sqmt, presence: true
end
