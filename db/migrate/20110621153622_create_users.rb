class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :rol, :limit => 10
      t.integer :login_count, :default => 0
      t.datetime :last_login_at
      t.timestamps
    end

    create_table :memberships do |t|
      t.belongs_to :user
      t.belongs_to :publisher
    end

    add_index :memberships, :user_id
    add_index :memberships, :publisher_id
  end
end
