class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.belongs_to :publisher
      t.belongs_to :publication
      t.string :format, :limit => 32
      t.string :file
      t.text :content
      t.timestamps
    end
  end
end
