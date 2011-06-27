class AddFileSizeToDownloads < ActiveRecord::Migration
  def change
    add_column :downloads, :file_size, :integer
    add_column :downloads, :content_type, :string, :limit => 100
  end
end
