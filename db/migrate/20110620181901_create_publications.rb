class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.belongs_to :publisher
      t.belongs_to :parent
      t.belongs_to :license
      t.integer :position

      t.string :slug, :limit => 100

      t.string :type, :limit => 48
      t.string :name, :limit => 300
      t.string :author, :limit => 300
      t.string :art
      t.string :art_url
      t.text :description
      t.string :viewable_content_type, :limit => 20
      t.text :viewable_content
      t.boolean :download, :default => true
      t.boolean :hide, :default => false
      t.string :payment_code, :limit => 100
      t.string :payment_method, :limit => 48
      t.timestamps
    end

    add_index :publications, :publisher_id
    add_index :publications, :license_id
    add_index :publications, :parent_id
    add_index :publications, :position
    add_index :publications, :slug
  end
end
