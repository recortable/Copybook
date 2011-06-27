
class Book < Publication
  validates :slug, :presence => true, :uniqueness => true

end