class CommecialUnit < ApplicationRecord
    has_attached_file :picture
    validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    validates :owner, presence: true
    validates :address, presence: true
    validates :parking, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :shops, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :sqmt, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
