class CreateSuitJobOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :suit_job_orders do |t|
      t.string :sales_job_order
      t.boolean :fabric_selection
      t.boolean :coat_job_order
      t.boolean :pants_job_order
      t.boolean :shirt_and_vest_job_order
      t.boolean :alteration_job_order
      t.boolean :first_suit_fitting
      t.boolean :suit_adjustments
      t.boolean :second_suit_fitting
      t.boolean :suit_final_sewing
      t.boolean :final_product_to_client

      t.timestamps
    end
  end
end
