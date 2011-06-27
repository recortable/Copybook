class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.belongs_to :publisher
      t.belongs_to :publication
      t.string :name, :limit => 100
      t.string :format, :limit => 32
      t.float :price, :default => 0
      t.string :currency, :limit => 10
      t.string :url, :limit => 300
      t.string :file
      t.integer :file_size
      t.string :content_type
      t.timestamps
    end
  end
end
