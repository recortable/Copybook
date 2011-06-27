class Download < ActiveRecord::Base
  belongs_to :publication
  belongs_to :publisher

  mount_uploader :file, DownloadUploader
  before_save :update_download_attributes

  validates :publication_id, :presence => true
  validates :publisher_id, :presence => true
  validates :format, :presence => true

  def download_link
    if self.url?
      self.url
    elsif self.file?
      self.file.url
    else
      '#'
    end
  end

  def title
    if self.name?
      self.name
    else
      "Descarga"
    end
  end


  def update_download_attributes
    if self.file.present?
      self.content_type = file.file.content_type
      self.file_size = file.file.size
    end
  end

end
