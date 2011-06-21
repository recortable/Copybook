class PublicationsController < ApplicationController
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

end
