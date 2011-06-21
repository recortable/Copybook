class PublishersController < ApplicationController
  respond_to :html
  expose(:publishers) { Publisher.all }
  expose(:publisher)


  def show

  end

  def edit
    authorize! :edit, publisher
  end

  def update
    authorize! :update, publisher
    flash[:notice] = 'Editorial actualizada.' if publisher.update_attributes(params[:publisher])
    respond_with publisher
  end

end
