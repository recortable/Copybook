class BooksController < PublicationsController
  expose(:publication) { Book.find_by_slug(params[:id]) }

end