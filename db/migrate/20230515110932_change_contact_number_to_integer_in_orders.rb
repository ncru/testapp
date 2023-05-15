class ChangeContactNumberToIntegerInOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :contact_number, :integer
  end  
end
