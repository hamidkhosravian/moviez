class AddTypeToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :purchase_type, :integer
  end
end
