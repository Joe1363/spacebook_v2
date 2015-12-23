class Picture < ActiveRecord::Base
  belongs_to :user
  #paperclip
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "500x500" }
  validates_attachment :image,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes }
end
