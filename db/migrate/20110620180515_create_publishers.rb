class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.belongs_to :license

      t.string :name, :limit => 300
      t.string :email, :limit => 300
      t.string :slug, :limit => 50
      t.text :description

      t.string :banner_art
      t.string :background_art

      t.string :color_body, :limit => 10
      t.string :color_text, :limit => 10
      t.string :color_secondary_text, :limit => 10
      t.string :color_links, :limit => 10
      t.string :color_background, :limit => 10
      t.timestamps
    end

    add_index :publishers, :license_id
  end
end
