class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.belongs_to :publisher
      t.belongs_to :parent
      t.string :slug, :limit => 100
      t.string :type, :limit => 48
      t.string :name, :limit => 300
      t.string :author, :limit => 300
      t.string :art
      t.string :art_url
      t.text :description
      t.integer :position
      t.belongs_to :license
      t.boolean :download, :default => true
      t.boolean :hide, :default => false
      t.timestamps
    end

    add_index :publications, :publisher_id
    add_index :publications, :license_id
  end
end
