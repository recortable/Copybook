class License < ActiveRecord::Base
  has_many :publications
  has_many :publishers

end
