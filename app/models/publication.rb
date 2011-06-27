class Publication < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :license
  belongs_to :parent, :class_name => 'Publication'
  has_many :children, :class_name => 'Publication', :foreign_key => 'parent_id'
  has_many :downloads

  scope :root, where(:parent_id => nil)

  acts_as_list :scope  => :parent_id
  mount_uploader :art, ArtUploader

  validates :slug, :presence => true, :uniqueness => true
  validates :publisher_id, :presence => true
  validates :name, :presence => true

  def to_param
    slug.present? ? "#{slug}".parameterize : id
  end

end
