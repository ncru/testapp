class AddClothingToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :clothing, :integer
  end
end
