# encoding: utf-8

class DownloadUploader < CarrierWave::Uploader::Base
  storage :s3

  def store_dir
    "downloads/publisher_#{model.publisher_id}/publication_#{model.publication_id}/download_#{model.id}"
  end
end
