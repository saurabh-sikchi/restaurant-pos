class AddDeliveredToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :delivered, :boolean
  end
end
