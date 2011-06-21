class PublicationsController < ApplicationController
  respond_to :html
  expose(:publications) { current_publisher.publications.root }
  expose(:publication)

  def welcome
    params[:id] = current_publisher.publications.root.last.id
    render 'show'
  end

  def index

  end

  def show

  end

  def edit
    authorize! :edit, publication
  end

  def update
    authorize! :update, publication
    flash[:notice] = "Guardado!" if publication.update_attributes(params[:book])
    respond_with publication
  end

end
