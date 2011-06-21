class PublicationsController < ApplicationController
  respond_to :html
  expose(:publications) { current_publisher.publications.root }
  expose(:publication)

  def welcome
    render 'index'
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
