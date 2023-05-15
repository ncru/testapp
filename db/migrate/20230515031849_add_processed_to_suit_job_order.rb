class AddProcessedToSuitJobOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :suit_job_orders, :processed, :boolean
  end
end
