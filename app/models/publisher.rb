class Publisher < ActiveRecord::Base
  has_many :publications
  belongs_to :license

  validates :slug, :presence => true
  validates :name, :presence => true
  validates :email, :presence => true
  validates :license_id, :presence => true

  mount_uploader :banner_art, ArtUploader
  mount_uploader :background_art, ArtUploader

  # 975 pixels wide, 40-180 pixels tall, .jpg, .gif or .png, 2mb max
end
