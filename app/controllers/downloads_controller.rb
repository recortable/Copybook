class DownloadsController < ApplicationController
  respond_to :html
  expose(:publication) do
    Publication.find_by_slug(params[:book_id]) if params[:book_id].present?
  end
  expose(:downloads) { publication.downloads }
  expose(:download)

  def new
  end

  def edit
  end

  def show
    respond_to do |format|
      format.html
    end
  end

  def create
    authorize! :create, download
    download.publisher_id = current_publisher
    flash[:notice] = 'Fichero subido!' if download.save
    respond_with download, :location => publication
  end

  def update
    authorize! :update, download
    flash[:notice] = 'Descarga actualizada' if download.update_attributes(params[:download])
    respond_with download, :location => publication
  end

  def destroy
    authorize! :destroy, download
    flash[:notice] = 'Descarga eliminada!' if download.destroy
    respond_with download, :location => publication
  end

end
