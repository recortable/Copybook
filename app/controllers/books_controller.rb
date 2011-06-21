class BooksController < PublicationsController
  expose(:book) { Book.find params[:id]}

  def update
    authorize! :update, book
    flash[:notice] = 'Guardado!' if book.update_attributes(params[:book])
    respond_with book, :location => publication_path(book)
  end
end