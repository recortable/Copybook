class ChaptersController < PublicationsController
  
  expose(:publication) { Chapter.find_by_position(params[:id]) }


end
