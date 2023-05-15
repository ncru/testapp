class ChangeJobOrderNumberToIntegerInOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :job_order_number, :integer
  end
end
