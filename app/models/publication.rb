class Publication < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :license
  belongs_to :parent, :class_name => 'Publication'
  has_many :children, :class_name => 'Publication', :foreign_key => 'parent_id'

  acts_as_list :scope  => :parent_id

  scope :root, where(:parent_id => nil)

  validates :publisher_id, :presence => true
  validates :name, :presence => true
end
