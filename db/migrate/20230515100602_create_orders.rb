class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :job_order_number
      t.string :customer_name
      t.integer :contact_number
      t.string :email
      t.string :address
      t.integer :jacket_length
      t.integer :back_width
      t.integer :sleeves
      t.integer :left_cuff
      t.integer :right_cuff
      t.integer :collar
      t.integer :chest
      t.integer :waist
      t.integer :hips
      t.string :lapel_type
      t.string :stature
      t.string :shoulders
      t.string :collar_type
      t.string :cuff_type
      t.string :pleats_options
      t.boolean :back_pockets
      t.integer :crotch
      t.integer :outseam
      t.integer :waist_pants
      t.integer :seat
      t.integer :thigh
      t.integer :knee
      t.integer :bottom
      t.string :remarks
      t.text :general_remarks

      t.timestamps
    end
  end
end
