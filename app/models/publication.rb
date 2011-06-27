class Publication < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :license
  belongs_to :parent, :class_name => 'Publication'
  has_many :children, :class_name => 'Publication', :foreign_key => 'parent_id'
  has_many :downloads

  scope :root, where(:parent_id => nil)

  acts_as_list :scope => :parent_id
  mount_uploader :art, ArtUploader

  validates :publisher_id, :presence => true
  validates :name, :presence => true

  def a_license
    if self.license.present?
      self.license
    elsif self.parent_id?
      self.parent.a_license
    end
  end

  def art_url
    if self.art?
      self.art.url
    elsif self.parent_id?
      self.parent.art_url
    else
      '/blank.gif'
    end
  end

  def to_param
    slug.present? ? "#{slug}".parameterize : id.to_s
  end

end
