class Publication < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :license

  validates :publisher_id, :presence => true
end
