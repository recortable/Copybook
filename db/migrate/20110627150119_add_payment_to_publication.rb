class AddPaymentToPublication < ActiveRecord::Migration
  def change
    add_column :publications, :payment_code, :string, :limit => 100
    add_column :publications, :payment_method, :string, :limit => 32
  end
end
