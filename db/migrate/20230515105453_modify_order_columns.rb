class ModifyOrderColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :job_order_number, :float
    change_column :orders, :jacket_length, :float
    change_column :orders, :back_width, :float
    change_column :orders, :sleeves, :float
    change_column :orders, :left_cuff, :float
    change_column :orders, :right_cuff, :float
    change_column :orders, :collar, :float
    change_column :orders, :chest, :float
    change_column :orders, :waist, :float
    change_column :orders, :hips, :float
    change_column :orders, :crotch, :float
    change_column :orders, :outseam, :float
    change_column :orders, :waist_pants, :float
    change_column :orders, :seat, :float
    change_column :orders, :thigh, :float
    change_column :orders, :knee, :float
    change_column :orders, :bottom, :float
  end
  
end
